[org 0x0100]

data: db 3
countr:db 0
countl:db 0
result:db 0

jmp start
xor al,al
xor bl,bl
xor ah,ah
xor bh,bh
start:
mov al,[data]
mov bl,[data]

shiftright:
    add bh,1
    shr bl,1
    cmp bl,0
    jnz shiftright

shiftleft:
    add ah,1
    shl al,1
    cmp al,0
    jnz shiftleft

cmp bh,ah
jbe right

left:
    mov [result],ah
    jmp finish

right:
    mov[result],bh
     
finish:
mov ax,0x4c00
int 0x21