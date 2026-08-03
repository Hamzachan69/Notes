(Transcribed by TurboScribe. Go Unlimited to remove this message.)

The basic purpose of a computer is to perform operations and operations, operation means operands. Operands are data on which we want to perform certain operations. So, in one memory bus we cannot keep the same data. 

Now can we? So what we do, we make like small things inside, we make temporary storages for that. So that instead of putting one data for one instance and losing that when the second instance comes, we can temporarily store that memory in one processor. That thing is called registers. 

They are both accessible and very well maintained in terms of that because it holds memory addresses of what data is stored in which area of the memory bus. So basically in short words, registers are like scratch pad that are rammed inside the processor. So for example, if I do a summation of 2 plus 2, write the code down. 

If I do the summation of 2 plus 2, so if I do it on the memory bus directly, I cannot add 2 and 2 together because it takes, if I add 2 and plus 2, the first 2 will be gone because the second instance will come in its place and I could not be able to complete the operation. But with registers, we can make that possible by doing, by putting two numbers and like putting one number and adding another number with it. And it depends upon the processor how many cells it can be divided, can it be divided by. 

Registers are relatively very small in numbers. So it is very scarce and very precious resources. So and in every processor, there are more than one registers. 

So like some manufacturer number their registers like R0, R1, R2 and others name it A, B, C, D. So that is, so this is basically called nomenclature. So another thing about it, some other manufacturer name their registers according to their function. For example, like I believe in, if I remember there were registers A, B, C, D. I believe in C or D. I may have to check that. 

One of these registers are used for indexing. Like for example, register C is used for indexing. So it is used to count for for loop. 

Indexing can be used for for loop iterations. So register C can be used as an indexing thing. So that it could run n times. 

Processor has and traditionally its main objective is to have do the mathematical and logical operations to perform it right. And the word size of a processor is defined by the width of its accumulator. 32 bit processor has accumulator of 32 bits. 

So that is how it is. One bit of processor is equivalent to one bit of accumulator. So bit by bit basically.

Point, index and base register. So I'm recording this just for the sake that what I understood and how will I shape my notes. This is 1.3 registers. 

No, it's 1.2. Okay. So point, index and base register. The name varies from manufacturer to manufacturer. 

Okay. For registers. So index registers are used for such situation to hold the address of the current arrays location.

Alright. So this is what it's used for. And in general when we need to access a memory location whose address is not known until we need an index register. 

So index is basically we point that thing where it belongs or where it resides. Without that register, we need to explicitly code each iteration separately. So end point, pointer registers are those registers which we have to point where the data belongs or resides. 

And the base register is that where we can store data in basically. Then we have flag registers and program status word. Alright. 

Unlike accumulator, flag registers are meaningless as a unit rather than the parallel as a unit. Each bit means the same thing. The bits of the flags register works independently and individually and combine its value meaningless. 

So basically a flag register by itself are pretty meaningless. So a perfect example is if I do the addition of a 16-bit by 16-bit addition and let's say the answer comes in 17 bits. So a carry flag will be raised. 

So in short, the flag registers carry only one bit. The flag register has only one bit. It can be 0 or it could be 1. It's only an indication of whether or whether not the carry flag was raised or like the register exceeded. 

Let's say that the example that I provided 16-bit by 16-bit addition, the answer is 17-bit. How do we know the answer is 17-bit? We will know that by the raising of the flag. Okay. 

Now next thing. Program counter and instruction pointer. So everything must be translated into binary form because our processor is dumb. 

Our processor understands ones and zeros. So basically in short words, I'm going to short this one out. This is the end of the topic. 

Okay. One, a program, the main definition of a program, what is a program? Program is defined to be an order of set of instructions. Program is a set of instructions, which the definition part of it is the order. 

The order is the main thing that defines a program. If I execute a program, let's say it has five instructions. If, uh, after the first instruction, if it executed the fifth instruction before the second, third and fourth, all of the logic is just out of the window and it's the program is useless and it's, it's cannot be used as it was coded and four. 

So for that, we have a very special register to make sure that every, every instruction, everything, every programs, uh, function is executed in a chronological order. So that is, uh, that is what we need a thing called program counter. It is a very special register, which makes sure that every instruction goes as is in an orderly manner. 

Now that's what a, uh, program code to do. Now, moreover, let's move on to the another thing that a program code to do. For example, if I add two numbers like one plus one and, but in the, uh, when the, uh, the information goes to the processor, it goes like this one, one five, two, and then one. 

What is one five, two for the processor? One five, two might be add instruction. That number just tells it that, uh, that, uh, the, uh, we have to do addition between their registers. But as an, as a coder or as a normal person, it rather be very difficult to remember this. 

For example, I may forget that one five, two maybe, uh, is used for addition or subtraction. So, uh, so the, we in assembly, we use the word add. Then there's the special small program for it, which translates that word add into one five, two, so that the processor could understand that we have to do addition. 

That small code, that one five, two is known as the op code. Every operation has this op code to explain the dump processor what's the, the programmer's main intent. Okay. 

And these, this word add and, uh, and C plus plus in Java, we use symbols. These are called mnemonic instruction mnemonics. Therefore, a mnemonic, let's say add A to B conveys more information to the reader. 

The dump process translator will convert these mnemonics back to original op codes and a key program, uh, to be used throughout the course. It is called assembler. This is the one point two, uh, registers like story that I, uh, understood. 

It took me 42 minutes to understand that. That's a hell of a lot of time, but still it's something better than nothing.

(Transcribed by TurboScribe. Go Unlimited to remove this message.)