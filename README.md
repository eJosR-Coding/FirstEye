# First Eye 

"First Eye" is a Bash script designed for the initial reconnaissance phase in cybersecurity challenges, such as those found on Hack The Box. It automates the process of pinging the target, scanning for open ports, and attempting to detect the operating system.

## Features

- **Ping Test**: Checks the connectivity to the target IP.
- **Port Scanning**: Scans all ports of the target to find open services.
- **OS Detection**: Attempts to identify the operating system of the target using Nmap.

## Prerequisites

Before running this script, ensure you have the following tools installed:

- `nmap`: A network scanning tool.
- `toilet`: A tool for creating large ASCII text banners in the terminal.

You can install these tools on Debian/Ubuntu with the following commands:

```bash
sudo apt update
sudo apt install nmap toilet
