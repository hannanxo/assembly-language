[org 0x0100] 

jmp start

num1: dw 2
num2: dw 3

start:
mov ax,[num1]
mov bx,[num2]

 loop:
 cmp ax,bx

 ja first
 jb second
 je third

  first:
  mov cx,ax
  sub cx,bx
   f1:
   add bx,1
   sub ax,1
   sub cx,1
   jnz f1
   jmp third

  second:
  mov cx,bx
  sub cx,ax
   s1:
   add ax,1
   sub bx,1
   sub cx,1
   jnz s1

third:
mov ax,0x4c00
int 0x21


