[org 0x0100]
jmp start
data:dw 2,8,7,9,6,10,13

start:
xor ax,ax
xor dx,dx
xor bx,bx
xor cx,cx
mov bx,0

outerloop:
mov ax, [data + bx]
TEST ax,1                                     
    jnz mid
    inc cx  ;for even
    add bx,2
    cmp bx,14
    jne outerloop
    jmp end
    
mid:
    inc dx  ;for odd
    add bx,2
    cmp bx,14
    jne outerloop
end:
mov ax,0x4c00
int 0x21

