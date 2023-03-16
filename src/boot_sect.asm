[org 0x7c00]

  mov si, HELLO_MESSAGE
  cld
  call ch_loop

  mov si, GOODBYE_MESSAGE
  cld
  call ch_loop

  jmp $

ch_loop:
  lodsb
  or al, al
  jz done
  mov ah, 0x0E
  mov bh, 0
  int 0x10
  jmp ch_loop

done:
  ret

HELLO_MESSAGE:
  db "Booting DavOS", 13, 10, 0

GOODBYE_MESSAGE:
  db "Shutting Down DavOS", 13, 10, 0

  times 510-($-$$) db 0

  dw 0xaa55
