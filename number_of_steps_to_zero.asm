[org 0x0100] 

jmp start

num: db 7

start:
mov al,[num]
mov bl,0
mov cl,0

outerloop:
  add bl,al
  sub al,1
  cmp al,0

jne outerloop 

mov cl,bl

mov ax, 0x4c00
int 0x21


