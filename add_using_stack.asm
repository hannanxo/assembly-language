[org 0x0100]

outerloop:
mov ax,12
mov bx,13
mov cx,ax
push ax
push bx
push cx

call add1

pop cx
pop bx
pop ax

mov ax,0x4c00
int 0x21

add1:
    push bp
    mov bp,sp
    sub sp,2
    sub sp,2
    add cx,bx
    mov word[bp-2],cx   ; sum is stored on stack

    call add2

    mov sp,bp
    pop bp
ret

add2:
    add ax,bx
    add cx,ax
    mov word[bp-4],cx
ret
