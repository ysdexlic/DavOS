[org 0x7c00]

mov bx, HELLO_MESSAGE
call print_string

call new_line

mov bx, GOODBYE_MESSAGE
call print_string

jmp $

print_char:
  pusha
  mov ah, 0x0e
  int 0x10
  popa
  ret

print_string:
  mov al, [bx]
  cmp al, 0
  je rrr
  call print_char
  add bx, 1
  jmp print_string

rrr:
  ret

new_line:
  pusha
  mov ah, 0x0e
  mov al, 10
  int 0x10
  mov al, 13
  int 0x10
  popa
  ret

HELLO_MESSAGE:
  db "Booting DavOS", 0

GOODBYE_MESSAGE:
  db "Shutting Down DavOS", 0

times 510-($-$$) db 0

dw 0xaa55
