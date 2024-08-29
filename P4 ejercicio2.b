org 1000h
A db 8
B db 5
C db 4
D db ?
org 3000h
CALC: push bx
mov bx,sp
add bx, 8
mov dl, [bx]
sub bx, 2
mov dl, [bx]
sub bx, 2
mov dl, [bx]
pop bx
ret
org 2000h
mov AL, A
push AX
mov al, B
push AX
MOV AL, C
push AX
call CALC
mov D, DL
POP BX
POP BX
POP BX
hlt
end
