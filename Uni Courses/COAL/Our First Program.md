Section 1.7 is the moment where all the abstract theory from 1.3–1.6 (instruction groups, the 8088 architecture, registers, flags) finally comes together into a **real, runnable program**. The approach taken is deliberately gentle: write the algorithm in **plain English first**, then translate it, line by line, into actual assembly syntax. This mirrors how you should approach _any_ new assembly program in the future — think in plain logic first, translate to mnemonics second.

The chosen task is intentionally trivial: **add three numbers together**. The simplicity is the whole point — it isolates the _mechanics_ of assembly language (syntax, source/destination order, registers) without burying you in complex logic at the same time.

---

### Step 1 — English Language Version

> [!quote] The Definition of a Program "**Program is an ordered set of instructions for the processor.**"

The task, written as plain English instructions manipulating AX and BX:

```
move 5 to ax
move 10 to bx
add bx to ax
move 15 to bx
add bx to ax
```

> [!note] Two Concepts Hiding in Plain Sight Even this simple English version reveals two ideas that apply to **every** assembly instruction you will ever write:
> 
> 1. **Destination** — every instruction has a "**to** destination" part; something is always the target that gets modified.
> 2. **Source** — there is always a source of the value being moved/added, appearing _before_ the "to" in this English phrasing. E.g., in "move 10 to bx" — `10` is the **source**, `bx` is the **destination**.
> 
> The whole purpose of writing the first program in English is to prove that ==assembly language concepts are simple, not exotic== — they're just everyday logic ("move this value here, then add that value there") wrapped in unfamiliar-looking syntax.

---

### Step 2 — Assembly Language Version

Intel _could_ have kept their assembly language identical to plain English, but they abbreviated things for brevity — e.g. `move` became `mov`. More importantly, **Intel flips the source/destination order** compared to the English version above.

> [!important] Intel's Universal Instruction Format
> 
> ```
> operation destination, source
> operation destination
> operation source
> operation
> ```
> 
> - The **first** operand (if two exist) is always the **destination**.
> - The **second** operand (if it exists) is the **source**.
> - The last three variations exist for instructions where **one or both operands are implied** — e.g., always assumed to be the accumulator (AX) — so they don't need to be written explicitly, or the instruction takes only one operand, or none at all.

This reversal (destination-then-source, instead of source-then-destination like the English version) is a small but important gotcha for beginners — it's easy to instinctively write instructions backwards if you're translating directly from a spoken-language mental model.

---

### Example 1.1 — The Actual Program

```asm
; a program to add three numbers using registers
[org 0x0100]
          mov ax, 5               ; load first number in ax
          mov bx, 10              ; load second number in bx
          add ax, bx              ; accumulate sum in ax
          mov bx, 15              ; load third number in bx
          add ax, bx              ; accumulate sum in ax

          mov    ax, 0x4c00       ; terminate program
          int    0x21
```

> [!note]- Line-by-Line Breakdown (click to expand)
> 
> |Line|What it does|
> |---|---|
> |Comment start|A **semicolon (`;`)** starts a comment — the assembler ignores everything after it on that line. ==Comments must be used extensively== in assembly to keep programs readable, since the code itself carries so little inherent meaning compared to high-level languages.|
> |`[org 0x0100]`|A directive (explained more fully later) — for now, just accept it as boilerplate.|
> |`mov ax, 5`|Loads the constant **5** into register AX.|
> |`mov bx, 10`|Loads the constant **10** into register BX.|
> |`add ax, bx`|Adds BX into AX, storing the result **back in AX**. AX should now hold **15**.|
> |`mov bx, 15`|Loads the constant **15** into BX (overwriting the previous 10).|
> |`add ax, bx`|Adds BX (now 15) into AX (currently 15) → AX becomes **30**. Final result: `5 + 10 + 15 = 30`. ✅|
> |Blank line|Vertical spacing should also be used generously to visually separate logical blocks of code — just like paragraphs in writing.|
> |`mov ax, 0x4c00` / `int 0x21`|These two lines are **not really "assembly language" concepts** — they're a way of talking to the **operating system (DOS)**, telling it the program has finished so it can safely display its command prompt again. ==Without this termination sequence, the computer may reboot or behave unpredictably.==|

---

### Assembler, Linker, and Debugger

To turn this source code into something the processor can actually run, we need supporting tools:

> [!info]+ The Toolchain
> 
> - **NASM** ("**N**etwide **A**ssembler") — the free, open-source assembler used throughout this course. It converts our mnemonic source code into raw binary opcodes.
> - **AFD** ("**A** **F**ullscreen **D**ebugger") — a free debugger used to step through and inspect running programs.
> 
> Together, these form ==the complete toolkit an assembly language programmer needs== for any task in this course.

**Assembling the program** (assuming the source file is `EX01.ASM`):

```bash
nasm ex01.asm –o ex01.com –l ex01.lst
```

This produces two files:

- **`EX01.COM`** — the actual executable binary.
- **`EX01.LST`** — a "listing file" showing exactly how each source line was translated into bytes.

---

### Reading the Listing File

```
1
2                                   [org 0x0100]
3 00000000 B80500                                  mov    ax, 5
4 00000003 BB0A00                                  mov    bx, 10
5 00000006 01D8                                    add    ax, bx
6 00000008 BB0F00                                  mov    bx, 15
7 0000000B 01D8                                    add    ax, bx
8
9 0000000D B8004C                                  mov    ax, 0x4c00
10 00000010 CD21                                    int    0x21
```

> [!important] Anatomy of a Listing Line Each line has three parts: **offset** (position of that instruction within the output file), **opcode bytes** (the actual translated binary), and the **original mnemonic**.
> 
> - `B8` = the opcode for "move a constant into AX." Whenever you see `B8`, you know a constant is being loaded into AX.
> - The following `0500` is the **immediate operand** — an operand placed _directly inside_ the instruction itself, rather than referencing a register or memory.

#### Little-Endian Byte Order — a Critical Detail

> [!warning] Why "5" Becomes "0500," Not "0005" AX is a **word-sized register** (16 bits = 4 hex digits = 2 bytes). When storing a 2-byte value, there are two possible conventions for which byte comes first:
> 
> - **Big-endian** (used by Motorola and others): most-significant byte first. Argued to be more natural for humans to read.
> - **Little-endian** (used by Intel): least-significant byte first. Argued to be more logical because the _less_ significant value sits at the _lower_ memory address, and the _more_ significant value sits at the _higher_ address.
> 
> Because the 8088 (and all Intel-derived chips since) use **little-endian**, the constant `5` — which as a full word is `0005` — gets stored in memory/instructions as `0500`: the low byte `05` first, then the high byte `00`. ==This is one of the most important, easily-forgotten rules in x86 assembly.==

Continuing the trace:

- `mov bx, 10` → opcode `BB` (move constant into BX), operand `0A00` (10 in little-endian).
- The **first instruction is 3 bytes long**, so the next instruction's listed offset is `3` — confirming the offset-tracking works exactly as expected.
- The **final instruction sits at offset `0x10`** (decimal 16) and is 2 bytes long, so the **entire COM file is exactly 18 bytes** — verifiable directly with the `DIR` command on the resulting file.

---

### Running It in the Debugger

> [!note] What the Debugger Shows You The debugger displays: registers, flags, the stack, your code, and one or two areas of system memory (as data). It lets you **step one instruction at a time**, observing the direct effect of each instruction on registers and data.

Key observations once the program is loaded:

- The **first instruction now sits at address `0100`**, not absolute zero — this is the direct effect of the `org 0x0100` directive at the top of the program.
- The debugger correctly displays your program's mnemonics **even though it was only given the raw `.COM` binary** (not the source or listing file!). This works because the mnemonic ↔ opcode mapping is **reversible** — the debugger reads the opcode bytes and maps them back to a mnemonic. ==A subtlety==: if an opcode has more than one valid mnemonic name, the debugger might display a different (but functionally equivalent) mnemonic than what you originally typed.
- Since this program never touches memory, the **only observable changes are in registers** — specifically watch **AX** (accumulating the sum), **BX** (loaded with each new value), and **IP** (advancing after every single instruction, always pointing to what runs next).

---

## 🎯 Scenario — Tracing Execution Like a Debugger Would

Let's mentally "single-step" through the program exactly as AFD would show it, tracking AX, BX, and IP after each instruction:

|Step|Instruction|AX|BX|IP (next instr. offset)|
|---|---|---|---|---|
|Start|—|?????|?????|0100|
|1|`mov ax, 5`|**5**|?????|0103|
|2|`mov bx, 10`|5|**10**|0106|
|3|`add ax, bx`|**15**|10|0108|
|4|`mov bx, 15`|15|**15**|010B|
|5|`add ax, bx`|**30**|15|010D|

Notice how **IP silently advances by exactly the byte-length of each instruction** (3 bytes for `mov ax, 5`, 3 bytes for `mov bx, 10`, 2 bytes for `add ax, bx`, etc.) — this is the Instruction Pointer from section 1.6 doing its job in real time, and it's exactly why the listing file's offsets matter: they tell you precisely where IP will land after each step.

### A second scenario — Why little-endian matters practically

Imagine you're debugging a crashed program and you dump raw memory, seeing the bytes `00 12` sitting at some address. If you assume big-endian, you'd read this as the word `0x0012` (18 decimal). But on an 8088 (little-endian), the correct interpretation is to **reverse the byte order**, reading it as `0x1200` (4608 decimal) — a wildly different number! Forgetting this single convention is one of the most common sources of confusion for beginners reading raw memory dumps or listing files.

---
[[Register Architecture| Prev Topic]]                                                                                                                        [[Segmented Memory Model| Next Topic]] 