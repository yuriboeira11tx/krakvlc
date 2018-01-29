#!/bin/bash
# Developer: Derxs
# Version: 1.0
sleep 1
echo -e "
---------------

  \033[01;31mKrak-VLC\033[00;00m

---------------
"
sleep 2
sed -i 's/geteuid/getppid/' /usr/bin/vlc
if [[ $? == 0 ]];then
	echo -e "\033[01;34m[+]\033[000;00m Succeso!"
	echo -n -e "\033[01;32m[?]\033[00;00m Deseja executar VLC [s/n]? "
	read sn
	case $sn in
		s)vlc;;
		n)exit;;
		*)echo "[!] Erro!";;
	esac
else
	echo
	echo -e "\033[01;31m[!]\033[00;00m Não foi possível concluir a operação"
fi
