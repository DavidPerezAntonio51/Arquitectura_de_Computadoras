   # Leer el valor introducido por teclado 
   # e imprimirlo en la consola

main:

   .text 
   addi $v0, $0, 5   #Función 5, read integer 
   syscall           #Valor leído en $v0 

   addi $a0, $v0, 0   #Movemos el valor leído a $a0 
   addi $v0, $0, 1    #Función 1, print integer 
   syscall            #Escribimos en consola $a0

   addi $v0, $0, 10   #Funtion 10, exit
   syscall            #Acaba el programa