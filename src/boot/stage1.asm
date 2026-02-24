[org 0x7C00]

mov ax, 0
mov ds, ax
mov es, ax

mov si, msg
call print_string
jmp $

print_string:
  mov ah, 0x0E

.loop:
  lodsb
  test al, al
  jz .done
  int 0x10
  jmp .loop

.done:
  ret

msg db "MentalOS ONE", 0xA, 0x0

times 510-($-$$) db 0x0
dw 0xAA55
