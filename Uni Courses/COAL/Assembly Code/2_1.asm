;This is the example for the 2.1 example in the notes for direct adressing 
[org 0x0100]
mov ax , [num1]
mov bx , [num2]
add ax,bx
mov ax , [num3]
add ax,bx
mov ax , [num4]
add ax,bx
mov ax,0x4c00
int 0x21


num1: dw 1 ; dw is used to define word and db is used to define a bit 
num2: dw 2
num3: dw 3
num4: dw 4