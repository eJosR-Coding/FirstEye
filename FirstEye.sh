!/bin/bash
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
               
               FIRST EYE
"

# Prompt the user to enter domain and IP target
read -p "Enter the domain target: " Domain
read -p "Enter the IP target: " IP

echo "Domain target: $Domain"
echo "IP target: $IP"

# Define functions
function ping_host() {
    echo "Pinging $Domain..."
    ping -c 4 $Domain
}

function scan_ports() {
    echo "Scanning open ports on $IP..."
    nmap -p 1-65535 -T4 -A -v $IP
}

function detect_os() {
    echo "Detecting OS for $IP..."
    nmap -O $IP
}

function stealth_scan() {
    echo "Performing stealth scan on $IP..."
    nmap -sS $IP
}

# Menu system
function show_menu() {
    echo "Choose an option:"
    echo "1) Ping host"
    echo "2) Scan all ports"
    echo "3) Detect operating system"
    echo "4) Perform a stealth scan"
    echo "5) Exit"
}

# Main loop
while true; do
    show_menu
    read -p "Enter choice [1-5]: " option
    case $option in
        1) ping_host ;;
        2) scan_ports ;;
        3) detect_os ;;
        4) stealth_scan ;;
        5) echo "Exiting program."; break ;;
        *) echo "Invalid option. Please try again." ;;
    esac
    echo "Operation complete. Press enter to continue."
    read
done
