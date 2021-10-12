      .data      
cadena: .asciiz   "¡ Hello World !" 
     .text
main:
      addi  $2, $zero, 4     # Se usará el servicio 4
      la    $a0, cadena       # Se obtiene el argumento 
      syscall                 # Solicita el servicio 
      jr    $31               # Termina la función principal       