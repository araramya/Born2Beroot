arcname=$(uname -a)
cpuP=$(nproc)
cpuV=$(grep processor /proc/cpuinfo | wc -l)
Memory=$(free -m | grep "Mem:" | awk '{printf("%d/%dMB (%.2f%%)", $3, $2, ($3 * 100 / $2))}')
Disk_usage=$(df -h --total | grep "total" | awk '{printf("%.1f/%.1fGB (%.2d%%)", $3, $2, $5)}')
CpuL=$(mpstat | grep "all" | awk '{printf("%.2f%%", $4 + $5 + $6 + $7 + $8 + $9 + $10 + $11 + $12)}')
LastReboot=$(who -b | awk '{print($3, $4)}')
LVMcount=$(lsblk | grep "lvm" | wc -l)

if [ $LVMcount -ne 0 ]
then LVM_yes_no="yes"
else LVM_yes_no="no"
	fi
Conexions_count=$(ss -s | grep "TCP:" | awk '{print $2}')
User_count=$(who | wc -l)
IPv4=$(hostname -I)
MAC=$(ip a | grep "ether" | awk '{print "("$2")"}')
SUDO_count=$(cat /var/log/sudo/sudo.log | grep "COMMAND" | wc -l)

echo "#Arcitecture: $arcname"
echo "#CPU physical : $cpuP"
echo "#vCPU : $cpuV"
echo "#Memory Usage: $Memory"
echo "#Disk Usage $Disk_usage"
echo "#CPU load: $CpuL"
echo "#Last boot: $LastReboot"
echo "#LVM use: $LVM_yes_no"
echo "#Conections TCP : $Conexions_count ESTABLISHED"
echo "#User log: $user_count"
echo "#Network : IP $IPv4 $MAC"
echo "#Sudo : $SUDO_count cmd"
