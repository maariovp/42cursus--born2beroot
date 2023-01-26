#!/usr/local/bin
#   INFORMAÇÕES DO SISTEMA.
system_arc=$(uname -a)

#   ARMAZENAMENTO DO PHYSICAL ID.
physicalid_cpu=$(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l)

#  ARMAZENAMENTO DAS INFORMAÇÕES DO PROCESSADOR.
processor_cpu=$(grep "^processor" /proc/cpuinfo | wc -l)

#   ARMAZENAMENTO TOTAL DA MEMÓRIA RAM.
total_ram=$(free -m | awk '$1 == "Mem:" {print $2}')

#   ARMAZENAMENTO DA QUANTIDADE DE MEMÓRIA ESTÁ SENDO UTILIZADA.
use_ram=$(free -m | awk '$1 == "Mem:" {print $3}')

#   ARMAZENAMENTO DA % DE UTILIZAÇÃO DA MEMÓRIA.
porcentage_ram=$(free | awk '$1 == "Mem:" {printf("%.2f"), $3/$2*100}')

#   ARMAZENAMENTO DO TOTAL DA MEMÓRIA ROM.
total_disk=$(df -Bg | grep '^/dev/' | grep -v '/boot$' | awk '{ft += $2} END {print ft}')

#   ARMAZENAMENTO DA QUANTIDADE DE MEMÓRIA ESTÁ SENDO UTILIZADA.
use_disk=$(df -Bm | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} END {print ut}')

#   ARMAZENAMENTO DA % DE UTILIZAÇÃO DA MEMÓRIA.
porcentage_disk=$(df -Bm | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $3} {ft += $2} END {printf("%d"), ut/ft*100}')

#   TOTAL DA CPU EM UTILIZAÇÃO.
use_cpu=$(top -bn1 | grep '^%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')

#   ARMAZENAMENTO DO ÚLTIMO LOGIN NO SISTEMA.
last_login=$(who -b | awk '$1 == "system" {print $3 " " $4}')

#   ARMAZENAMENTO DA QUANTIDADE DE PARTIÇÕES LVM.
total_lvm=$(lsblk | grep "lvm" | wc -l)

#   VERIFICAÇÃO LOGICA SE ESTIVER ALGUMA PARTIÇÃO LVM SENDO UTILIZADA.
use_lvm=$(if [ $total_lvm -eq 0 ]; then echo no; else echo yes; fi)

#   ARMAZENAMENTO DAS CONEXÕES TCP.
connexions_tcp=$(cat /proc/net/sockstat{,6} | awk '$1 == "TCP:" {print $3}')

#   ARMAZENAMENTO DO USER LOGADO.
user_login=$(users | wc -w)

#   ARMAZENAMENTO DO IP DA MÁQUINA.
ip=$(hostname -I)

#   ARMAZENAMENTO DO ENDEREÇO MAC.
mac=$(ip link show | awk '$1 == "link/ether" {print $2}')

#   ARMAZENAMENTO DA QUANTIDADE DE COMANDOS SUDORES UTILIZADOS.
cmd_sudo=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall " #Architecture: $system_arc
#CPU physical: $physicalid_cpu
#vCPU: $processor_cpu
#Memory Usage: $use_ram/${total_ram}MB ($porcentage_ram%)
#Disk Usage: $use_disk/${total_disk}Gb ($porcentage_disk%)
#CPU load: $use_cpu
#Last boot: $last_login
#LVM use: $use_lvm
#Connexions TCP: $connexions_tcp ESTABLISHED
#User log: $user_login
#Network: IP $ip ($mac)
#Sudo: $cmd_sudo cmd"