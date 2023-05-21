#! /bin/bash
toilet First eye
echo "                                                  
                                  
                        @@@                       
              @&@       @@@       @&@             
     @@        @@@      @@@      @@@        @@    
     @@@@     (@@@@@@@@@@@@@@@@@@@@@      @@@@    
       @@@@@@@@@@@@@@         @@@@@@@@@@@@@@      
       @@@@@   @@#@             @@#    @@@@@      
    @@@@@      @@@     @@@@@     @@@      @@@@    
    #@@@@      @@@     @@@@@     @@@      @@@@    
       @@@@@   @@@@             @@@    @@@@@      
          @@@@@@@@@@@        (@@@@@@@@@@@         
               @@@@@@@@@@@@@@@@@@@@@              
                                                                              
                                              "
#Pasar los Argumentos
#Los argumentos se reciben en orden y se presnetan de esa forma

Dominio=$1
IP=$2
echo "El Dominio es $Dominio y la IP es: $IP"
echo "Datos: $1, $2"

#Funciones
function Pingin(){
echo "waiting for ping in: $IP"
ping -c 1 $IP
}
Pingin

