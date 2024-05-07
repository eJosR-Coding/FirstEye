#!/bin/bash
toilet "First Eye"
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

# Pass arguments in order
Dominio=$1
IP=$2

echo "Domain: $Dominio"
echo "IP Address: $IP"

# Ping function
function ping_host() {
    echo "Pinging $IP..."
    ping -c 4 $IP
}

# Scan open ports with nmap
function scan_ports() {
    echo "Scanning open ports on $IP..."
    nmap -p 1-65535 -T4 -A -v $IP
}

# OS detection with nmap
function detect_os() {
    echo "Detecting OS for $IP..."
    nmap -O $IP
}

# Execute functions
ping_host
scan_ports
detect_os
