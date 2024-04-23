.model small
pila segment stack
    db 32 DUP('stack--')
pila ends

;Definimos las variables
datos segment
    nombre db 'Steven Buitrago Guisamano', '$'
    id db 13, 10, 'Identificacion: 1106512778', '$'
datos ends

;Segmento del codigo
.code
    main proc
    mov ax, datos
    mov ds, ax

    mov ah, 09h ;Imprime en pantalla
    lea dx, nombre ;lee la variable
    int 21h ;Interrupcion del sistema

    mov ah, 09h
    lea dx, id
    int 21h

    mov ax, 4c00h
    int 21h

main endp ;Cerramos el ciclo
end main