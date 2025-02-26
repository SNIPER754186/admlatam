#!/bin/bash
# -*- ENCODING: UTF-8 -*-

CIDdir=/etc/ADM-db && [[ ! -d ${CIDdir} ]] && mkdir ${CIDdir}
SRC="${CIDdir}/sources" && [[ ! -d ${SRC} ]] && mkdir ${SRC}
CID="${CIDdir}/User-ID" && [[ ! -e ${CID} ]] && echo > ${CID}
keytxt="${CIDdir}/keys" && [[ ! -d ${keytxt} ]] && mkdir ${keytxt}
LINE="  ======================================="
IP="$(wget -qO- ifconfig.me)"
_restart=$(date +"%H") 

_globales=$(curl -sSL "https://www.dropbox.com/s/5hr0wv1imo35j1e/Control-Bot.txt" | cut -d '|' -f1)
permited=$(curl -sSL "https://www.dropbox.com/s/5hr0wv1imo35j1e/Control-Bot.txt") 
 [[ $(echo $permited|grep "${IP}") = "" ]] && {
 echo "$(date '+%C%y-%m-%d') - $(date +%R)" > $HOME/fail.log
	#rm -rf /etc/SCRIPT
	#systemctl disable BotGen-server.service	
	#systemctl stop BotGen-server.service	
	#rm -rf /etc/ADM-db
  } || {
    echo -e "DONE"
 }

clear&&clear

[[ "${_restart}" = '00' ]] && {
rm -f $HOME/RegBOT/free_check.txt
echo -e "BORRADO $(date +"%H:%M:%S") " >> $HOME/log.bot
}

# Token del bot
TOKEN="$(cat ${CIDdir}/token)"
[[ -z $TOKEN ]] && exit
#ID=$1 && ID="$(echo $ID | awk '{print $1}' | sed -e 's/[^0-9]//ig')"
urlBOT="https://api.telegram.org/bot$TOKEN/sendMessage"


call.topGEN(){
cat /etc/gerar-sh-log > /var/www/html/ChumoGH/checkIP.log
local _TopGlobal='0' 
#BotL='0'
for _IP in ${_globales}; do
[[ ${_IP} = ${_myIP} ]] && {
  BotL=$(cat < /etc/gerar-sh-log | wc -l)
  echo "BOT LOCAL ${_myIP} : ${BotL}"
} || {
  wget -q --no-check-certificate -O /tmp/lags ${_IP}:81/ChumoGH/checkIP.log 
  [[ -e /tmp/lags ]] && BotL="$(cat < /tmp/lags | wc -l)"
  echo "BOT AUTH ${_IP} : ${BotL}"
  rm -f /tmp/lags
}
_TopGlobal=$((${_TopGlobal} + ${BotL}))
done
echo "${_TopGlobal}" > /root/RegBOT/IGlobal
}

#FUNCION DESTRUIR ID
unset i _Fechas
_HLocal="$(date -d $(date '+%C%y-%m-%d') +%s)"
#for i in $(cat /etc/ADM-db/User-ID | awk '{print $3}'); do 
for _Fechas in $(cat /etc/ADM-db/User-ID | cut -d '|' -f2); do 
[[ "${_HLocal}" -ge "$(date -d ${_Fechas} +%s)" ]] && {
	#for id in $(cat /etc/ADM-db/User-ID | grep "$i" | awk '{print $1}' | sed -e 's/[^a-z0-9 -]//ig'); do
	for id in $(cat /etc/ADM-db/User-ID | grep "${_Fechas}" | cut -d '|' -f1 | sed -e 's/[^a-z0-9 -]//ig'); do
	sed -i "/${id}/d" /etc/ADM-db/User-ID
	echo -e " ID : ${id} REMOVIDO ${_Fechas} en $(date '+%C%y-%m-%d') - $(date +%R) " >> $HOME/RegBOT/killID.log
	[[ -z ${callback_query_from_username} ]] && usrLOP=${message_from_username} || usrLOP=${callback_query_from_username}
          MENSAJE="  ========📩𝙈𝙀𝙉𝙎𝘼𝙅𝙀 𝙍𝙀𝘾𝙄𝘽𝙄𝘿𝙊📩========\n"
          MENSAJE+=" SU MEMBRESIA HA FINALIZADO MEDIANTE KILL-ID\n"
          MENSAJE+=" FIN DE CONTRADO : $(date '+%C%y-%m-%d') - $(date +%R) \n"
          MENSAJE+=" SI DESEAS APELAR TU CONTRADO, CONTACTA CON $(cat < /etc/ADM-db/resell)\n"
          MENSAJE+=" $LINE\n"
          MENSAJE+=" ADQUIERE TU MEMBRESIA DESDE @$(ShellBot.username) , DIGITANDO /prices \n"
          MENSAJE+=" RECUERDA MANTENER TU CAPTURA DE PAGO, PARA ALGUN RECLAMO!\n"
          MENSAJE+=" $LINE\n"
		  curl -s --max-time 10 -d "chat_id=${id}&disable_web_page_preview=1&text=$(echo -e "$MENSAJE")" $urlBOT &>/dev/null  
	done
}
done

#for id in $(cat /etc/ADM-db/User-ID | cut -d '|' -f1 | sed -e 's/[^a-z0-9 -]//ig'); do 
#done

call.topGEN

/bin/autoboot &>/dev/null  

exit
