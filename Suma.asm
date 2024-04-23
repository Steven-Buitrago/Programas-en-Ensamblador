.model small
pila segment stack
    db 32 DUP('stack--')
pila ends

;Definimos las variables
.data

input1 db 13, 10, 'Ingrese el primero numero: $'
input2 db 13, 10,'Ingrese el segundo numero: $'

numero1 db 0
numero2 db 0

resultado db 13, 10, 'El resultado es: $'

suma db 0


;Segmento del codigo
.code
    main proc
    mov ax, @data
    mov ds, ax

    ;Imprimo el primer mensaje
    mov ah, 09h
    lea dx, input1
    int 21h

    mov ah, 01h ; Solicito un caracter
    int 21h
    sub al, 30h ; Se realiza el ajuste en el registro

    mov numero1, al ;Guardo el valor en mi variable

    ;Imprimo el segundo mensaje
    mov ah, 09h
    lea dx, input2
    int 21h

    mov ah, 01h ; Solicito un caracter
    int 21h
    sub al, 30h ; Se realiza el ajuste en el registro

    mov numero2, al ;Guardo el valor en mi variable

    ;Operacion suma
     
    mov al, numero1 
    add al, numero2 ;La funcion "Add" suma los valores
    add al, 30h
    mov suma, al

    mov ah, 09h
    lea dx, resultado
    int 21h

    mov ah, 02
    mov dl, suma
    int 21h
    

    mov ax, 4ch
    int 21h

main endp ;Cerramos el ciclo
end main

