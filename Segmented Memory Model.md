# Chapter 1 — Exercises (MCQ Format)

> Source: End-of-chapter exercises, _Computer Architecture & Assembly Language Programming_ (CS401), Chapter 1. **Note:** The original textbook exercises are short-answer/descriptive questions. They've been converted into MCQ format below for self-testing. Correct answers are highlighted using Obsidian's `==highlight==` syntax.

---

**Q1. Which bus is used by the processor to specify the memory location it wants to access?**

- A) Data Bus
- B) Control Bus
- C) ==Address Bus==
- D) Status Bus

---

**Q2. Which of the following buses is bidirectional (carries data both to and from the processor)?**

- A) Address Bus
- B) ==Data Bus==
- C) Control Bus (as a whole set of individually unidirectional lines)
- D) None of the above

---

**Q3. Which register holds the address of the _next_ instruction to be executed?**

- A) Accumulator
- B) Index Register
- C) ==Program Counter (PC)==
- D) Program Status Word (PSW)

---

**Q4. Which register indicates status information such as carry, zero, sign, and overflow after an operation?**

- A) Accumulator
- B) Base Register
- C) Instruction Register
- D) ==Program Status Word (Flag Register)==

---

**Q5. What is the size of the accumulator in a 64-bit processor?**

- A) 16-bit
- B) 32-bit
- C) ==64-bit==
- D) 128-bit

---

**Q6. What is the key difference between an instruction mnemonic and its opcode?**

- A) The opcode is human-readable; the mnemonic is binary
- B) ==The mnemonic is the human-readable symbol (e.g., ADD); the opcode is the actual binary pattern the processor executes==
- C) They refer to the exact same thing with no difference
- D) The mnemonic is used only in high-level languages, never in assembly

---

**Q7. A combination of 4 bits is called a:**

- A) Byte
- B) ==Nibble==
- C) Word
- D) Double word

---

**Q8. On the 8088 architecture, a combination of 16 bits is called a:**

- A) Byte
- B) Nibble
- C) ==Word==
- D) Double word

---

**Q9. What is the maximum memory the 8088 processor can address?**

- A) 64 KB
- B) ==1 MB==
- C) 4 GB
- D) 16 MB

---

**Q10. How many total registers does the 8088 architecture have (general-purpose + special-purpose combined)?**

- A) 8
- B) 10
- C) ==14==
- D) 16

---

**Q11. Which flag is set to `1` when an arithmetic operation produces a result of exactly zero?**

- A) Carry Flag
- B) ==Zero Flag==
- C) Sign Flag
- D) Overflow Flag

---

**Q12. Which flag is set to `1` when an _unsigned_ arithmetic operation produces a result that doesn't fit in the register (i.e., there's a carry-out of the most significant bit)?**

- A) ==Carry Flag==
- B) Zero Flag
- C) Sign Flag
- D) Overflow Flag

---

**Q13. Which flag directly reflects the most significant bit (MSB) of the result, effectively indicating whether the result is negative in signed representation?**

- A) Carry Flag
- B) Zero Flag
- C) ==Sign Flag==
- D) Overflow Flag

---

**Q14. Which flag indicates that a _signed_ arithmetic operation produced a result that is out of the valid signed range (e.g., adding two positives and getting a result that appears negative)?**

- A) Carry Flag
- B) Zero Flag
- C) Sign Flag
- D) ==Overflow Flag==

---

**Q15. Given AX = 0x1254, what are CF and ZF after executing `add ax, 0xEDAB`?** _(0x1254 + 0xEDAB = 0xFFFF, which fits exactly in 16 bits)_

- A) CF = 1, ZF = 1
- B) ==CF = 0, ZF = 0==
- C) CF = 1, ZF = 0
- D) CF = 0, ZF = 1

---

**Q16. Given AX = 0x1254 and BX = 0x0FFF, what are CF and SF after executing `add ax, bx`?** _(0x1254 + 0x0FFF = 0x2253 → fits in 16 bits, MSB = 0)_

- A) CF = 1, SF = 1
- B) CF = 1, SF = 0
- C) ==CF = 0, SF = 0==
- D) CF = 0, SF = 1

---

**Q17. Given BX = 0x0FFF, what are CF and ZF after executing `add bx, 0xF001`?** _(0x0FFF + 0xF001 = 0x10000 → overflows 16 bits, register holds 0x0000)_

- A) CF = 0, ZF = 0
- B) ==CF = 1, ZF = 1==
- C) CF = 1, ZF = 0
- D) CF = 0, ZF = 1

---

**Q18. In a little-endian format, where is the least significant byte of a word stored?**

- A) At the higher memory address
- B) ==At the lower memory address==
- C) It's split evenly across both addresses
- D) Little-endian doesn't define byte order

---

**Q19. Which byte-ordering format does the Intel 8088 microprocessor use?**

- A) Big-endian
- B) ==Little-endian==
- C) Mixed-endian
- D) Depends on the compiler

---

**Q20. For the little-endian word `0xB800` stored at some offset, which byte is stored at the lower address?**

- A) 0xB8
- B) ==0x00==
- C) Both bytes at the same address
- D) Neither — it depends on the segment register

---

**Q21. What is the offset at which the first executable instruction of a `.COM` file must be placed?**

- A) 0x0000
- B) ==0x0100==
- C) 0x1000
- D) 0xFFFF

---

**Q22. Why can't a segment in 8088 architecture start at an arbitrary physical address like 55555?**

- A) Because segments can only be defined on 16-bit boundaries
- B) ==Because segments can only be defined on 16-byte (paragraph) boundaries==
- C) Because 55555 is reserved for the BIOS
- D) Because segment values must always be even numbers

---

**Q23. Given the segment:offset pair `1DDD:0436`, what is the resulting 20-bit physical address?** _(1DDD0 + 0436 = 1E206)_

- A) 0x1E106
- B) ==0x1E206==
- C) 0x1DDD6
- D) 0x20436

---

**Q24. What is the first physical memory address accessible using segment value `1000`?** _(1000 × 16 = 10000)_

- A) 0x01000
- B) ==0x10000==
- C) 0x00100
- D) 0x11000

---

**Q25. In an assembly instruction, which of the following correctly copies the contents of register BL into register CL?**

- A) `mov bl, cl`
- B) ==`mov cl, bl`==
- C) `add cl, bl`
- D) `mov cl, bx`

---

## Descriptive Questions (kept as originally intended — not suited to MCQ format)

A few exercises are inherently open-ended and are better practiced as written answers rather than forced into MCQs.

---

**1. Explain how the processor uses the address bus, data bus, and control bus together to communicate with system memory.**

> ==Answer:== Whenever the processor needs to read from or write to memory, it uses all three buses together, each with its own job:
> 
> - The **address bus** carries the specific memory location (address) the processor wants to access. It only travels _from_ the processor _to_ memory — the processor is telling memory "this is the location I want," so it's unidirectional.
> - The **control bus** carries signals that specify _what kind of operation_ is happening — for example, whether this is a read or a write, and when the memory should actually respond (timing/synchronization signals). It's made up of several individual lines, each of which is itself unidirectional, though collectively the bus carries information both ways depending on which specific line is active.
> - The **data bus** is where the _actual data_ travels — this is bidirectional because data has to flow both ways: from memory to the processor during a read, and from the processor to memory during a write.
> 
> So a typical read looks like: the processor puts an address on the address bus → asserts a "read" signal on the control bus → memory responds by placing the requested data on the data bus → the processor reads it in. A write follows the same pattern, except the control bus signals "write" and the processor (not memory) places data onto the data bus.

---

**2. List all 14 registers of the 8088 architecture and briefly describe the use of each.**

> ==Answer:== The 8088 has 14 registers, grouped into four categories:
> 
> **General-Purpose Registers (4):**
> 
> - **AX (Accumulator)** — primary register for arithmetic/logic operations and I/O.
> - **BX (Base)** — often used to hold a base address for memory access.
> - **CX (Count)** — commonly used as a loop/iteration counter.
> - **DX (Data)** — used to extend precision in multiply/divide operations, and for I/O port addressing.
> 
> _(Each of these can also be accessed as two separate 8-bit halves — e.g., AX splits into AH and AL — but they're still counted as one 16-bit register each.)_
> 
> **Segment Registers (4):**
> 
> - **CS (Code Segment)** — holds the segment address of the code currently executing.
> - **DS (Data Segment)** — holds the segment address of the program's data.
> - **SS (Stack Segment)** — holds the segment address of the stack.
> - **ES (Extra Segment)** — an additional segment register, often used for string/array operations.
> 
> **Pointer and Index Registers (4):**
> 
> - **SP (Stack Pointer)** — holds the current top-of-stack offset within the stack segment.
> - **BP (Base Pointer)** — used to reference data on the stack (e.g., function parameters/local variables).
> - **SI (Source Index)** — holds an offset, commonly used as the source pointer in string/array operations.
> - **DI (Destination Index)** — holds an offset, commonly used as the destination pointer in string/array operations.
> 
> **Special-Purpose Registers (2):**
> 
> - **IP (Instruction Pointer)** — the 8088's version of the Program Counter; holds the offset of the next instruction to execute.
> - **FLAGS (Program Status Word)** — holds individual status bits (carry, zero, sign, overflow, etc.) reflecting the outcome of the last operation.

---

**3. Write a short assembly program that calculates the square of six by adding six to the accumulator six times.**

> ==Answer:==
> 
> ```asm
> mov ax, 0        ; clear the accumulator (AX = 0)
> mov cx, 6        ; CX will act as our loop counter (6 iterations)
> 
> repeat:
>     add ax, 6    ; add 6 to AX
>     loop repeat  ; decrement CX, jump back to 'repeat' if CX != 0
> 
> ; at this point, AX = 6 + 6 + 6 + 6 + 6 + 6 = 36 (i.e., 6 squared)
> ```
> 
> This mirrors exactly what "squaring by repeated addition" means: 6² is just 6 added to itself 6 times. The `CX` register is a natural fit here since — as covered in the Registers notes — one of its traditional roles is exactly this: acting as a loop counter (an indexing-style role) for `for`-loop-like iteration, and the `loop` instruction automatically decrements CX and checks it against zero for you.

---

**4. Explain why segmentation was originally introduced in the 8088 architecture.**

> ==Answer:== The 8088's internal registers (and its address bus logic for addressing) were designed around **16-bit values**, but Intel wanted the processor to be able to address **1 MB of memory** — which requires a **20-bit address**. A single 16-bit register can only directly represent 65,536 (64 KB) distinct addresses, far short of 1 MB.
> 
> Instead of widening every register to 20 bits (which would have been a bigger, more expensive redesign), Intel's solution was **segmentation**: combine two 16-bit values — a **segment** register and an **offset** — to compute a full 20-bit physical address, using the formula:
> 
> ```
> Physical Address = (Segment × 16) + Offset
> ```
> 
> This let the 8088 keep its efficient 16-bit register design while still reaching the full 1 MB address space, at the cost of extra complexity (e.g., multiple segment:offset pairs can point to the very same physical address, and segments can only start on 16-byte "paragraph" boundaries).

---

_Adapted into MCQ format from the Chapter 1 exercises of the course transcript for self-testing purposes. Descriptive answers added above for the questions not suited to MCQ conversion._