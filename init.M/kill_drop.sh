#!/bin/bash
# -*- ENCODING: UTF-8 -*-

LINE="  ̶-̶ ̶-̶ ̶-̶ ̶-̶ ̶-̶ ̶-̶ ̶-̶ ̶-̶ ̶-̶ "

[[ -z ${IP} ]] && IP=$(cat < /bin/ejecutar/IPcgh) || IP="$(wget -qO- ifconfig.me)"
_restart=$(date +"%H") 
_globales=$(curl -sSL "https://raw.githubusercontent.com/SNIPER754186/admlatam/refs/heads/main/source/Control-Bot.txt" | cut -d '|' -f1)
permited=$(curl -sSL "https://raw.githubusercontent.com/SNIPER754186/admlatam/refs/heads/main/source/Control-Bot.txt") 
 [[ $(echo $permited|grep "${IP}") = "" ]] && {
 echo "$(date '+%C%y-%m-%d') - $(date +%R)" > $HOME/fail.log
	#rm -rf /etc/SCRIPT
	#systemctl disable BotGen-server.service	
	#systemctl stop BotGen-server.service	
	#rm -rf /etc/ADM-db
  } || {
    echo -e "DONE"
 }


l='̶-̶ ̶-̶ ̶-̶ MOD MENU ̶-̶ ̶-̶ ̶-̶'


clear&&clear

[[ "${_restart}" = '00' ]] && {
echo -e "" > $HOME/RegBOT/free_check.txt
echo -e "BORRADO $(date +"%H:%M:%S") " >> $HOME/log.bot
}

#ID=$1 && ID="$(echo $ID | awk '{print $1}' | sed -e 's/[^0-9]//ig')"

call.topGEN(){
cat /etc/gerar-sh-log > /var/www/html/ChumoGH/checkIP.log
local _TopGlobal='0' 
#BotL='0'
for _IP in ${_globales}; do
[[ ${_IP} = ${_myIP} ]] && {
  BotL=$(cat < /etc/gerar-sh-log | wc -l)
  echo "BOT LOCAL ${_myIP} : ${BotL}"
} || {
  wget wget --no-check-certificate -t2 -T2 -O /tmp/lags ${_IP}:81/ChumoGH/checkIP.log 
  [[ -e /tmp/lags ]] && BotL="$(cat < /tmp/lags | wc -l)"
  echo "BOT AUTH ${_IP} : ${BotL}"
  rm -f /tmp/lags
}
_TopGlobal=$((${_TopGlobal} + ${BotL}))
done
echo "${_TopGlobal}" > /root/RegBOT/IGlobal
}

#FUNCION DESTRUIR ID
_validIDS(){
unset i _Fechas
_HLocal="$(date -d $(date '+%C%y-%m-%d') +%s)"
local CID=$1
local TOKEN=$2
local urlBOT="https://api.telegram.org/bot$TOKEN/sendMessage"
#for i in $(cat ${CID} | awk '{print $3}'); do 
for _Fechas in $(cat ${CID} | cut -d '|' -f2); do 
[[ "${_HLocal}" -ge "$(date -d ${_Fechas} +%s)" ]] && {
	#for id in $(cat ${CID} | grep "$i" | awk '{print $1}' | sed -e 's/[^a-z0-9 -]//ig'); do
	for id in $(cat ${CID} | grep "${_Fechas}" | cut -d '|' -f1 | sed -e 's/[^a-z0-9 -]//ig'); do
	sed -i "/${id}/d" ${CID}
	echo -e " ID : ${id} REMOVIDO ${_Fechas} en $(date '+%C%y-%m-%d') - $(date +%R) " >> $HOME/RegBOT/killID.log
	[[ -z ${callback_query_from_username} ]] && usrLOP=${message_from_username} || usrLOP=${callback_query_from_username}
          MENSAJE="  ========📩 ᴍᴇɴꜱᴀᴊᴇ ᴅᴇ ᴀᴠɪꜱᴏ 📩========\n"
          MENSAJE+=" SU MEMBRESIA HA FINALIZADO MEDIANTE SYSTEM (KILL-ID)\n"
          MENSAJE+=" FIN DE CONTRADO : $(date '+%C%y-%m-%d') - $(date +%R) \n"
          MENSAJE+=" SI DESEAS APELAR TU CONTRADO, CONTACTA AL ADMIN DEL BOT\n"
          MENSAJE+=" $LINE\n"
          MENSAJE+=" RENUEVA TU MEMBRESIA DIGITANDO /prices \n"
          MENSAJE+=" RECUERDA MANTENER TU CAPTURA DE PAGO, PARA ALGUN RECLAMO!\n"
          MENSAJE+=" $LINE\n"
		  MENSAJE+='&reply_markup={"inline_keyboard":[[{"text":" SU ID ","callback_data":"/id"},{"text":" SOPORTE ","url":"https://t.me/ChumoGH_ADM"}]]}'
		  curl -s --max-time 10 -d "chat_id=$id&disable_web_page_preview=1&text=$(echo -e "$MENSAJE")" ${urlBOT} &>/dev/null
		  #curl -s --max-time 10 -d "chat_id=${id}&disable_web_page_preview=1&text=$(echo -e "$MENSAJE")" $urlBOT &>/dev/null  
	done
}
done
}
#for id in $(cat ${CID} | cut -d '|' -f1 | sed -e 's/[^a-z0-9 -]//ig'); do 

#done

# Listar archivos en la carpeta que coinciden con el patrón "User-*"
matching_files=$(ls /etc/ADM-db/ | grep "User-*")

# Iterar sobre cada archivo coincidente
for file in $matching_files; do
	file_name=$(echo "$file" | sed 's/User-//')
	[[ ${file_name} = 'ID' ]] && {
	[[ -e /etc/ADM-db/User-ID ]] && _validIDS "/etc/ADM-db/User-ID" "$(cat /etc/ADM-db/token)"
	} || {
	TOKEN=$(ps x | grep MultiBot.sh | grep -v grep| grep ${file_name} | cut -d " " -f20)
	_validIDS "/etc/ADM-db/${file}" "${TOKEN}"
	}
done

call.topGEN

/bin/autoboot &>/dev/null

exit
