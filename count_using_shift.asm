[org 0x0100]
jmp outerloop
data: db 3,9,56,43,1,2,23


outerloop:
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
mov bp,0
mov si,0

call even

xor ax,ax
xor cx,cx
xor si,si

call odd


mov ax,0x4c00
int 0x21

even:
xor ax,ax
mov al,byte[data + si]
mov cl,2
div cl
cmp ah,0

jnz noeven
    

inc bh  ;count for even numbers
noeven:
inc si 
cmp si,7
jnz even

ret


odd:
mov al,byte[data + si]
mov cl,2
div cl
cmp ah,0
jz noodd

inc dh   ;count for odd numbers
noodd:         
inc si
cmp si,7
jnz odd


ret



