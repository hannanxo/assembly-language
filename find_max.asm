[org 0x0100]
jmp outer

data :dw 47,31,72
outer:
mov si,0
mov ax,0
mov bx,0
mov cl,0
mov bp,0
mov dx,0

call start

mov ax,0x4c00
int 0x21

start:
mov ax,[data + si]
mov cl,10
div cl 

add si,2
add bp,1
;Maximum number will be stored in dh
add ah,al
cmp ah,dl
ja ad
jb not_ad

ad:
    mov dl,ah
    mov al,0
    mov ah,0
    cmp bp,3
    jne start
not_ad:
    mov al,0
    mov ah,0
    cmp bp,3
    jne start                                                                                                 

ret