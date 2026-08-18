;This is the example for the 2.1 example in the notes for direct adressing 
[org 0x0100]
mov ax , [num1]
mov bx , [num1 + 2]
add ax,bx
mov ax , [num1 + 4]
add ax,bx
mov [num1 + 6] , ax
mov ax,0x4c00
int 0x21


num1: dw 1,2,3,0