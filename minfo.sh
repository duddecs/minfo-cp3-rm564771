#!bin/bash
# Declara que este script será executado com o interpretador Bash (mas atenção: está escrito errado, o certo seria /bin/bash)

echo "Uso $0: 
| Para saber o nome da máquina = hostname 
| Para saber o tempo que a máquina está ligada = uptime
| Para saber a partição do disco = disk 
| Para saber todas as informações = all"
# Exibe instruções de uso. "$0" mostra o nome do script que está sendo executado.

# Verifica se o primeiro argumento passado ($1) é "hostname"
[ "$1" = hostname ] && { hostname; exit; }
# Se for, executa o comando `hostname` (exibe o nome da máquina) e encerra o script

# Verifica se o argumento é "uptime"
[ "$1" = uptime ] && { uptime -p; exit; }
# Se for, mostra há quanto tempo o sistema está ligado de forma legível (ex: "up 1 hour, 5 minutes")

# Verifica se o argumento é "disk"
[ "$1" = disk ] && { df -h; exit; }
# Se for, mostra as partições e uso do disco em formato legível (human readable)

# Verifica se o argumento é "all"
[ "$1" = all ] && { hostname; df -h; exit; }
# Se for, mostra o nome da máquina e o uso do disco (mas atenção: não mostra o uptime aqui)

