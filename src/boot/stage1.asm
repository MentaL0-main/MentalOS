[org 0x7C00]
mov ax, 0
mov ds, ax

mov ax, 0x0013
int 0x10

mov ax, 0xA000
mov es, ax
mov di, 0

mov dx, 0
.row:
  mov bx, 0
  .col:
    mov al, dl
    add al, bl
    shr al, 2
    stosb
    inc bx
    cmp bx, 320
    jb .col
  inc dx
  cmp dx, 200
  jb .row

kb_loop:
  mov ah, 0x00
  int 0x16
  cmp al, 'q'
  je $
  jmp kb_loop

times 510-($-$$) db 0
dw 0xAA55

