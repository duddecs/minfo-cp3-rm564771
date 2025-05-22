 #!bin/bash

echo "Uso $0: 
| Para saber o nome da máquina = hostname 
| Para saber o tempo que a máquina está ligada = uptime
| Para saber a partição do disco = disk 
| Para saber todas as informações = all"

[ "$1" = hostname ] && { hostname; exit; }
[ "$1" = uptime ] && { uptime -p; exit; }
[ "$1" = disk ] && { df -h; exit; }
[ "$1" = all ] && { hostname; df -h; exit; }

