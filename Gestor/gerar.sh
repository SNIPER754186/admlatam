#!/bin/bash
clear
[[ ! -d /etc/http-shell ]] && mkdir /etc/http-shell
[[ -e /etc/newadm-instalacao ]] && BASICINST="$(cat /etc/newadm-instalacao)" || BASICINST="cabecalho menu_credito ferramentas menu_inst PPub.py usercodes ferramentascodes payloads ssl paysnd.sh PDirect.py v-local.log PGet.py ultrahost menu POpen.py shadowsocks.sh fai2ban PPriv.py"
IVAR="/etc/http-instas"
source <(curl -sSL https://raw.githubusercontent.com/SNIPER754186/admlatam/refs/heads/main/extra_plugin/styles.cpp)

export c_default="\033[0m"
export c_blue="\033[1;34m"
export c_magenta="\033[1;35m"
export c_cyan="\033[1;36m"
export c_green="\033[1;32m"
export c_red="\033[1;31m"
export c_yellow="\033[1;33m"

anim=(
  "${c_blue}•${c_green}•${c_red}•${c_magenta}•    "
  " ${c_green}•${c_red}•${c_magenta}•${c_blue}•   "
  "  ${c_red}•${c_magenta}•${c_blue}•${c_green}•  "
  "   ${c_magenta}•${c_blue}•${c_green}•${c_red}• "
  "    ${c_blue}•${c_green}•${c_red}•${c_magenta}•"
)

start_animation() {
  [[ "${silent_mode}" == "true" ]] && return 0

  setterm -cursor off

  (
    while true; do
      for i in {0..4}; do
        echo -ne "\r\033[2K                         ${anim[i]}"
        sleep 0.1
      done

      for i in {4..0}; do
        echo -ne "\r\033[2K                         ${anim[i]}"
        sleep 0.1
      done
    done
  ) &

  export ANIM_PID="${!}"
}

stop_animation() {
  [[ "${silent_mode}" == "true" ]] && return 0

  [[ -e "/proc/${ANIM_PID}" ]] && kill -13 "${ANIM_PID}"
  setterm -cursor on
}


_sleepColor(){
local time=$1
local accion=$2
start_animation
[[ -z ${accion} ]] && {
[[ -z ${time} ]] && sleep 2s || sleep ${time}
} || ${accion} &>/dev/null
stop_animation
echo
tput cuu1 >&2 && tput dl1 >&2
}



permited=$(curl -sSL "https://raw.githubusercontent.com/Qm90R2VuIDIwMjQgQ2h1bW9HSCsK/U291cmNlIEJvckdlbiBBRE1jZ2ggQ2h1bW9HSCAyMDI0IFBsdXM-/main/source/Control-Bot.txt") 
[[ $(echo $permited|grep "$(wget -qO- ifconfig.me)") = "" ]] && {
rm -rf /etc/SCRIPT
systemctl disable BotGen-server.service	
systemctl stop BotGen-server.service	
rm -rf /etc/ADM-db
} 
 
check_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
echo "$IP" > /usr/bin/vendor_code
}

####inicio puertos
ports_ () {
unset porta
_core=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
_usop=$(printf '%-1s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
##
ram1=$(free -h | grep -i mem | awk {'print $2'})
ram2=$(free -h | grep -i mem | awk {'print $4'})
ram3=$(free -h | grep -i mem | awk {'print $3'})
##
_ram=$(printf ' %-9s' "$(free -h | grep -i mem | awk {'print $2'})")
_usor=$(printf '%-8s' "$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2 }')")
_core=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
_usop=$(printf '%-1s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")

mt=$(free -h | grep Mem | sed 's/\s\+/,/g' | cut -d , -f2)
mb=$(free -h | grep Mem | sed 's/\s\+/,/g' | cut -d , -f6)
ml=$(free -h | grep Mem | sed 's/\s\+/,/g' | cut -d , -f7)
pp=$(cat /proc/cpuinfo | grep "model name" | uniq | awk -F ":" '{print $2}')
csss=$(cat /proc/cpuinfo | grep processor | wc -l)
usoo=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')
CPU=$(echo $usoo | awk '{printf("%d\n",$1 + 0.5)}')
PID_GEN1=$(ps x|grep -v grep|grep "8888")
[[ ! $PID_GEN1 ]] && PID_GEN1="\033[0;31m[\033[0;35mCOLAPZADO\033[0;31m]" || PID_GEN1="\033[0;35m[\033[0;36mFUNCIONANDO\033[0;31m]"
porta=`if netstat -tunlp |grep nc.tradit 1> /dev/null 2> /dev/null; then
echo -e "\033[0;36m   Keygen: \033[0;31m[\033[0;32m -  ✅  - \033[0;31m]"
else
echo -e "\033[0;36m   Keygen: \033[0;35m[\033[0;31m-  ❌  -\033[0;35m]"
fi`;
#✘
[[ $v1g = $v2g ]] && vesaoSCTG="\033[1;32mGEN \033[0;33m ($v2g)" || vesaoSCTG="\033[1;31mGEN \033[0;33m($v2g) ► \033[1;32m($v1g)\033[1;31m"
[[ $v1 = $v2 ]] && vesaoSCT="\033[1;32m SCRIPT( ADMcgh ) \033[0;33m($v2) | ${vesaoSCTG}" || vesaoSCT="\033[1;31m SCRIPT( ADMcgh )\033[0;33m($v2) ► \033[1;32m($v1)\033[1;31m | ${vesaoSCTG}"
echo -e "${cor[2]}${vesaoSCT} ${cor[0]}"
msg -bar3
echo -e "\033[1;34m ‣\033[1;31m TOTAL:\033[1;32m "$mt "\033[1;34m ‣ \033[1;31m Libre:\033[1;32m "$ram2 "\033[1;34m ‣ \033[1;31m Usada:\033[1;32m"$ram3
echo -e "\033[1;34m ‣\033[1;31m Uso RAM: \033[1;32m"$_usor "\033[1;34m‣\033[1;31m Uso CPU: \033[1;32m$_usop \033[1;34m ‣\033[1;31m Cache:\033[1;32m"$mb # $CPU"%"
msg -bar3
echo -e " \033[0;31mSystem:\033[0;32m$(cat /etc/issue.net) \033[0;31mIP:\033[0;32m $(wget -qO- ipv4.icanhazip.com)"
msg -bar3
echo ""
echo -ne "$(msg -verd "  Keys Usadas") $(msg -azu " : ") " && msg -bra "\033[1;41m $(cat $IVAR) $porta"
echo ""
}

SCPT_DIR="/etc/SCRIPT"
SCPT_LTM="/etc/LTM"
[[ ! -e ${SCPT_LTM} ]] && mkdir ${SCPT_LTM}
[[ ! -e ${SCPT_DIR} ]] && mkdir ${SCPT_DIR}
DIR="/etc/http-shell"
LIST="-SPVweN"
v1g=$(cat /bin/ejecutar/vG-new.log)
v1=$(cat /bin/ejecutar/v-new.log)
v2=$(cat < ${SCPT_DIR}/v-local.log)
v2g=$(cat < /bin/ejecutar/vG-local.log)

meu_ip () {
MIP=$(ip addr | grep 'inet' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1)
MIP2=$(wget -qO- ipv4.icanhazip.com)
[[ "$MIP" != "$MIP2" ]] && IP="$MIP2" || IP="$MIP"
}

mudar_instacao () {
while [[ ${var[$value]} != 0 ]]; do
[[ -e /etc/newadm-instalacao ]] && BASICINST="$(cat /etc/newadm-instalacao)" || BASICINST="cabecalho menu_credito ferramentas menu_inst PPub.py usercodes ferramentascodes payloads ssl paysnd.sh verifica PDirect.py v-local.log PGet.py ultrahost menu POpen.py shadowsocks.sh fai2ban PPriv.py"
clear
echo -e $BARRA
echo -e "MENU SSELECCIÓN DE INSTALACIÓN"
echo -e $BARRA
echo "[0] - FINALIZAR PROCEDIMIENTO"
i=1
for arqx in `ls ${SCPT_DIR}`; do
[[ $arqx = @(gerar.sh|http-server.py) ]] && continue
[[ $(echo $BASICINST|grep -w "$arqx") ]] && echo "[$i] - [X] - $arqx" || echo "[$i] - [ ] - $arqx"
var[$i]="$arqx"
let i++
done
echo -ne "Seleccione un archivo [Adicionar/Eliminar]: "
read value
[[ -z ${var[$value]} ]] && return
if [[ $(echo $BASICINST|grep -w "${var[$value]}") ]]; then
rm -f /etc/newadm-instalacao
local BASIC=""
  for INSTS in $(echo $BASICINST); do
  [[ $INSTS = "${var[$value]}" ]] && continue
  BASIC+="$INSTS "
  done
echo $BASIC > /etc/newadm-instalacao
else
echo "$BASICINST ${var[$value]}" > /etc/newadm-instalacao
fi
done
}

list_fix () {
rm ${SCPT_DIR}/*.x.c &> /dev/null
unset KEY
KEY="$1"
name="$2"
#CRIA DIR
[[ ! -e ${DIR} ]] && mkdir ${DIR}
#ENVIA ARQS
i=0
VALUE+="gerar.sh http-server.py $BASICINST"
for arqx in `ls ${SCPT_DIR}`; do
[[ $(echo $VALUE|grep -w "${arqx}") ]] && continue 
echo -e "[$i] -> ${arqx}"
arq_list[$i]="${arqx}"
let i++
done
#msg -bar3
#echo -e " [1] -> KEY DE ADM SCRIPT"
#echo -e " [2] -> KEY FOR GENERADOR ( BETA)"
#msg -bar3
#read -p " OPCION : " readvalue
#CRIA KEY
[[ ! -e ${DIR}/${KEY} ]] && mkdir ${DIR}/${KEY}
#PASSA ARQS
[[ -z $nombrevalue ]] && nombrevalue="$nomkey$name"
if [[ $readvalue = @(cgh|1) ]]; then
#ADM BASIC
#clear&&clear
#echo -e " KEY DE SCRIPT ADM "
 arqslist="$BASICINST"
 for arqx in `echo "${arqslist}"`; do
 [[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
 cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
 echo "$arqx" >> ${DIR}/${KEY}/${LIST}
 done
[[ -e /bin/http-server.sh ]] && cp /bin/http-server.sh ${DIR}/${KEY}/http-server.py && echo "http-server.py" >> ${DIR}/${KEY}/${LIST}
[[ -e /bin/gerar ]] && cp /bin/gerar ${DIR}/${KEY}/gerar.sh && echo "gerar.sh" >> ${DIR}/${KEY}/${LIST}
else
 for arqx in `echo "${readvalue}"`; do
 #UNE ARQ
 [[ -e ${DIR}/${KEY}/${arq_list[$arqx]} ]] && continue #ANULA ARQUIVO CASO EXISTA
 rm ${SCPT_DIR}/*.x.c &> /dev/null
 cp ${SCPT_DIR}/${arq_list[$arqx]} ${DIR}/${KEY}/
 echo "${arq_list[$arqx]}" >> ${DIR}/${KEY}/${LIST}
 done
echo "TRUE" >> ${DIR}/${KEY}/FERRAMENTA
fi
if [[ $readvalue = @(gen|2) ]]; then
#ADM GENERADOR
clear&&clear
echo -e "KEY DE GENERADOR"
 arqslist="$BASICINST"
 for arqx in `echo "${arqslist}"`; do
 [[ -e ${DIR}/${KEY}/$arqx ]] && continue #ANULA ARQUIVO CASO EXISTA
 cp ${SCPT_DIR}/$arqx ${DIR}/${KEY}/
 echo "$arqx" >> ${DIR}/${KEY}/${LIST}
 done
 cp /bin/gerar ${DIR}/${KEY}/gerar.sh
 echo "http-server.py" >> ${DIR}/${KEY}/${LIST}
 cp /bin/http-server.sh ${DIR}/${KEY}/http-server.py
 echo "gerar.sh" >> ${DIR}/${KEY}/${LIST}
echo "Gerador" >> ${DIR}/${KEY}/GERADOR
fi
rm ${SCPT_DIR}/*.x.c &> /dev/null
echo "$nombrevalue" > ${DIR}/${KEY}.name
[[ ! -z $IPFIX ]] && echo "$IPFIX" > ${DIR}/${KEY}/keyfixa
echo -e "-------------------------------------------------"
}

    ofusLTM() {
      unset server
      #server=$(echo ${txt_ofuscatw} | cut -d':' -f1)
      unset txtofus
      number=$(expr length $1)
      for ((i = 1; i < $number + 1; i++)); do
        txt[$i]=$(echo "$1" | cut -b $i)
        case ${txt[$i]} in
        ".") txt[$i]="v" ;;
        "v") txt[$i]="." ;;
        "1") txt[$i]="@" ;;
        "@") txt[$i]="1" ;;
        "2") txt[$i]="?" ;;
        "?") txt[$i]="2" ;;
        "4") txt[$i]="p" ;;
        "p") txt[$i]="4" ;;
        "-") txt[$i]="L" ;;
        "L") txt[$i]="-" ;;
        esac
        txtofus+="${txt[$i]}"
      done
      echo "$txtofus" | rev
    }




ofus () {
unset txtofus
number=$(expr length $1)
for((i=1; i<$number+1; i++)); do
txt[$i]=$(echo "$1" | cut -b $i)
case ${txt[$i]} in
".")txt[$i]="x";;
"x")txt[$i]=".";;
"5")txt[$i]="s";;
"s")txt[$i]="5";;
"1")txt[$i]="@";;
"@")txt[$i]="1";;
"2")txt[$i]="?";;
"?")txt[$i]="2";;
"4")txt[$i]="0";;
"0")txt[$i]="4";;
"/")txt[$i]="K";;
"K")txt[$i]="/";;
esac
txtofus+="${txt[$i]}"
done
echo "$txtofus" | rev
}

fix_key () {
unset nomkey
echo " Bienvenido, Porfavor dijita el Nombre del DUEÑO de la KEYs"
read -p "Nombre del Dueño de las Keys : " nomkey
[[ $nomkey = 0 ]] && return 
[[ -z $nomkey ]] && {
[[ -e /etc/menu_ito ]] && nomkey="$(cat /etc/menu_ito)" || nomkey='@ChumoGH - OFICIAL'
}
msg -bar3
echo " Bienvenido, Porfavor ingresa el numero de keys a generar"
read -p "Numero de Keys : " numk
msg -bar3
read -p "INGRESA NOMBRE DE VENDEDOR : " vkey
clear
msg -bar3
echo -e "$numk Keys activas,de $nomkey y esperando instalación!"
echo "$nomkey" > ${SCPT_DIR}/menu_credito
for((w=0; w<$numk; w++)); do
valuekey="$(date | md5sum | head -c11)"
valuekey+="$(echo $(($RANDOM*10))|head -c 6)"
xyz+="$(echo $(($RANDOM*3))|head -c 4)"
#valuekey+="$(echo $(($RANDOM*10))|head -c 5)"
list_fix "$valuekey" "$(($w + 1))"
keyfinal=$(ofus "$(wget -qO- ipv4.icanhazip.com):8888/$valuekey/$LIST")
echo -e " ✅ Key $(($w + 1)) Exitosa! $(printf '%(%D-%H:%M:%S)T')  \n"
echo -e " 💥  ${keyfinal}  💥" | pv -qL 80
done
[[ -e /etc/menu_ito ]] && cat /etc/menu_ito > ${SCPT_DIR}/menu_credito || echo -e "\nCreditos Aplicados Exitosamente"
#$(cat < /etc/ADM-db/resell)
msg -bar3
echo -e " 🛡️  𝙸𝚗𝚜𝚝𝚊𝚕𝚊𝚍𝚘𝚛  𝙾𝚏𝚒𝚌𝚒𝚊𝚕   🛡️"
#msg -bar3
msg -bar3 && echo -ne "$(msg -verd "apt update -y &&") $(msg -aqua "apt upgrade -y;\n") "&& msg -bra "\033[7;49;35m wget -q https://raw.githubusercontent.com/ChumoGH/ScriptCGH/main/setup; chmod 777 setup; ./setup --install"
msg -bar3
[[ -e /etc/menu_numito ]] && menumito="$(cat /etc/menu_numito)" || menumito="https://t.me/ChumoGH_bot"
[[ -z $vkey ]] && vkey="@ChumoGH"
echo -e " 🧬 Soporte : Ubuntu 18.04 - 24.04\n         𝙍𝙚𝙘𝙤𝙢𝙚𝙣𝙙𝙖𝙙𝙤 𝙐𝙗𝙪𝙣𝙩𝙪 18.04"
echo -e " Verificada: $vkey 🛡️ 𝚁𝙴𝚂𝙴𝙻𝙻𝙴𝚁 𝙰𝚌𝚝𝚞𝚊𝚕 : $nomkey" | pv -qL 80
echo -e ' 🪦 Solicita tus Creditos 🛡️⚔️'
msg -bar3
read -p "Enter para finalizar"
}

att_gen_key () {
i=0
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Volver"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;32m ($(cat ${DIR}/${arqs}/keyfixa))\033[0m"
keys="$keys $arqs"
let i++
fi
done
keys=($keys)
msg -bar3
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Escolha qual Atualizar[t=todos]: " -e -i 0 value
done
[[ $value = 0 ]] && return
if [[ $value = @(t|T) ]]; then
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
KEYDIR="$DIR/$arqs"
rm $KEYDIR/*.x.c &> /dev/null
 if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then #Keyen Atualiza
 rm ${KEYDIR}/${LIST}
   for arqx in `ls $SCPT_DIR`; do
    cp ${SCPT_DIR}/$arqx ${KEYDIR}/$arqx
    echo "${arqx}" >> ${KEYDIR}/${LIST}
    rm ${SCPT_DIR}/*.x.c &> /dev/null
    rm $KEYDIR/*.x.c &> /dev/null
   done
 arqsx=$(ofus "$IP:8888/$arqs/$LIST")
 echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ATUALIZADA!)\033[0m"
 fi
let i++
done
rm ${SCPT_DIR}/*.x.c &> /dev/null
msg -bar32
echo -ne "\033[0m" && read -p "Enter"
return 0
fi
KEYDIR="$DIR/${keys[$value]}"
[[ -d "$KEYDIR" ]] && {
rm $KEYDIR/*.x.c &> /dev/null
rm ${KEYDIR}/${LIST}
  for arqx in `ls $SCPT_DIR`; do
  cp ${SCPT_DIR}/$arqx ${KEYDIR}/$arqx
  echo "${arqx}" >> ${KEYDIR}/${LIST}
  rm ${SCPT_DIR}/*.x.c &> /dev/null
  rm $KEYDIR/*.x.c &> /dev/null
  done
 arqsx=$(ofus "$IP:8888/${keys[$value]}/$LIST")
 echo -e "\033[1;33m[KEY]: $arqsx \033[1;32m(ATUALIZADA!)\033[0m"
 read -p "Enter"
 rm ${SCPT_DIR}/*.x.c &> /dev/null
 }
}

del_KILL () {
for arqlist in `ls $DIR | grep -v "ERROR-KEY" | grep -v ".name"`; do
[[ -e /${DIR}/${arqlist}.name ]] || rm -rf /${DIR}/${arqlist}
done
}

remover_key () {
del_KILL
i=0 && unset value keys
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
echo "[$i] Volver"
keys="$keys retorno"
let i++
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
if [[ ! -e ${DIR}/${arqs}/used.date ]]; then
echo -e "\033[1;32m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m (Key Activa)\033[0m" || rm -rf ${DIR}/${arqs}
else
echo -e "\033[1;31m[$i] $arqsx ($(cat ${DIR}/${arqs}.name))\033[1;33m ($(cat ${DIR}/${arqs}/used.date) IP: $(cat ${DIR}/${arqs}/used))\033[0m"
fi
keys="$keys $arqs"
let i++
done
keys=($keys)
msg -bar3
while [[ -z ${keys[$value]} || -z $value ]]; do
read -p "Elija cual remover: " -e -i 0 value
done
[[ -d "$DIR/${keys[$value]}" ]] && rm -rf $DIR/${keys[$value]}* || return
}
remover_key_usada () {
i=0
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
arqsx=$(ofus "$IP:8888/$arqs/$LIST")
 if [[ -e ${DIR}/${arqs}/used.date ]]; then #KEY USADA
  if [[ $(ls -l -c ${DIR}/${arqs}/used.date|cut -d' ' -f7) != $(date|cut -d' ' -f3) ]]; then
  rm -rf ${DIR}/${arqs}*
  echo -e "\033[1;31m[KEY]: $arqsx \033[1;32m(Eliminada!)\033[0m" 
  else
  echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(Key Activa!)\033[0m"
  fi
 else
 echo -e "\033[1;32m[KEY]: $arqsx \033[1;32m(Key Activa!)\033[0m"
 fi
let i++
done
msg -bar32
echo -ne "\033[0m" && read -p "Enter"
}
start_gen () {
unset bot_ini PIDGEN
if [[ -z $(ps x | grep -v grep | grep "/bin/http-server.sh") ]]; then
echo -e "[Unit]
Description=HTTP/KEYGEN Service by @ChumoGH
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
User=root
WorkingDirectory=/root
ExecStart=/bin/bash /bin/http-server.sh -start
Restart=always
ExecReload=/bin/kill -HUP $MAINPID
RestartSec=3s

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/keygen-server.service

		systemctl enable keygen-server &>/dev/null
    	systemctl start keygen-server &>/dev/null
else
kill -9 $(ps x | grep -v grep | grep "/bin/http-server.sh" | cut -d ' ' -f1) &>/dev/null
systemctl stop keygen-server &>/dev/null
systemctl disable keygen-server &>/dev/null
rm -f /etc/systemd/system/keygen-server.service &>/dev/null
clear
msg -bar3
echo -e "\033[1;31m            KeyGen fuera de linea"
msg -bar3
read -p "Presione Enter para continuar "
fi
}


message_gen () {
read -p "Ingresa el Mensaje: " MSGNEW
[[ -z $MSGNEW ]] && return 
echo $MSGNEW > /etc/menu_ito 
cat /etc/menu_ito > ${SCPT_DIR}/menu_credito  
read -p "Ingresa tu Numero de Contacto o tu ALIAS de TELEGRAM: " MSGNEW
echo $MSGNEW > /etc/menu_numito && chmod +x /etc/menu_numito
msg -bar3
}

act_gen () {
unset varread
while [[ ${varread} != @([0-3]) ]]; do
echo -e "Bienvenido al Actualizador, Escoje que vas a Actualizar\n 1).- Creditos del ADM\n 2).- Solo Ficheros del SCRIPT\n 3).- REINSTALAR COMPLETO" | lolcat
echo -ne "${cor[6]}"
msg -bar3
read -p " Escoje :" varread
done
msg -bar3
if [[ ${varread} = 0 ]]; then
return
elif [[ ${varread} = 1 ]]; then
message_gen
elif [[ ${varread} = 2 ]]; then
files_script
elif [[ ${varread} = 3 ]]; then
[[ -e "/bin/ShellBot.sh" ]] &&  rm -f /bin/ShellBot.sh
#bash -c "$(curl -fsSL https://www.dropbox.com/s/o033e3zh5ptttjr/setup.gen)" --ADMcgh
source <(curl -fsSL https://raw.githubusercontent.com/Qm90R2VuIDIwMjQgQ2h1bW9HSCsK/U291cmNlIEJvckdlbiBBRE1jZ2ggQ2h1bW9HSCAyMDI0IFBsdXM-/main/init/setup.gen) --ADMcgh
exit&&exit
fi
}
files_script() {
echo " CREANDO EL FCHERO DE ACTUALIZACION"

wget -q --no-check-certificate -O /tmp/files.tar.gz https://raw.githubusercontent.com/Qm90R2VuIDIwMjQgQ2h1bW9HSCsK/U291cmNlIEJvckdlbiBBRE1jZ2ggQ2h1bW9HSCAyMDI0IFBsdXM-/main/SCRIPTS/ADMcgh/SCRIPT.tar.gz && echo -e " DESCARGANDO ChumoGH EN 127.0.0.1:81 " || echo -e " ERROR EN DESCARGAR LOCALFILES"
rm -f /etc/SCRIPT/*
[[ -e /tmp/files.tar.gz ]] && tar -xzvf /tmp/files.tar.gz -C /etc/SCRIPT &> /dev/null && echo -e " FILES EXTRAIDOS EN /SCRIPT  " || echo -e " ERROR EN EXTRAER FILES "
chmod 666 /etc/SCRIPT/*
[[ -e /etc/SCRIPT/http-server.py ]] && mv /etc/SCRIPT/http-server.py /bin/http-server.sh
chmod +x /bin/http-server.sh
rm -f /tmp/files.tar.gz
wget -q --no-check-certificate -O /tmp/files.tar.gz https://www.dropbox.com/s/z16y8r2pqurbz4t/SCRIPT.tar.gz && echo -e " DESCARGANDO LATAM EN 127.0.0.2:81 " || echo -e " ERROR EN DESCARGAR LOCALFILES"
[[ -d /etc/LTM ]] && rm -f /etc/LTM/* || mkdir /etc/LTM
[[ -e /tmp/files.tar.gz ]] && tar -xzvf /tmp/files.tar.gz -C /etc/LTM &> /dev/null && echo -e " FILES EXTRAIDOS EN /LTM  " || echo -e " ERROR EN EXTRAER FILES "
chmod 666 /etc/LTM/*
systemctl restart keygen-server &>/dev/null && echo -e " HTTP SERVER REINICIADO"
echo -e " UPDATE FINALIZADO!!!!"
rm -f /tmp/files.tar.gz
read -p " ENTER PARA FINALIZAR"
}

rmv_iplib () {
echo -e "SERVIDORES DE KEY ATIVOS!"
rm /var/www/html/newlib && touch /var/www/html/newlib
rm ${SCPT_DIR}/*.x.c &> /dev/null
[[ -z $(ls $DIR|grep -v "ERROR-KEY") ]] && return
for arqs in `ls $DIR|grep -v "ERROR-KEY"|grep -v ".name"`; do
if [[ $(cat ${DIR}/${arqs}.name|grep GERADOR) ]]; then
var=$(cat ${DIR}/${arqs}.name)
ip=$(cat ${DIR}/${arqs}/keyfixa)
echo -ne "\033[1;31m[USUARIO]:(\033[1;32m${var%%[*}\033[1;31m) \033[1;33m[GERADOR]:\033[1;32m ($ip)\033[0m"
echo "$ip" >> /var/www/html/newlib && echo -e " \033[1;36m[ATUALIZADO]"
fi
done
echo "$(wget -qO- ifconfig.me)" >> /var/www/html/newlib
msg -bar3
read -p "Enter"
}

bot_menu () {
local ruta_destino="/root/resBOT"
local ruta_origen="/etc/ADM-db"
[[ -e "/bin/ShellBot.sh" ]] &&  rm -f /bin/ShellBot.sh
[[ -e /etc/nivbot ]] || echo "0" > /etc/nivbot
[[ -d /etc/ADM-db ]] && chmod +x /etc/ADM-db/*
[[ ! -d ${ruta_origen} ]] && mkdir ${ruta_origen}
[[ ! -d ${ruta_destino} ]] && mkdir ${ruta_destino}
#(
#[[ -e /etc/ADM-db/sources/costes ]] && mv /etc/ADM-db/sources/costes ${ruta_origen}/costes
#[[ -e /etc/ADM-db/token ]] && mv /etc/ADM-db/token ${ruta_origen}/token
#[[ -e /etc/ADM-db/Admin-ID ]] && mv /etc/ADM-db/Admin-ID ${ruta_origen}/Admin-ID
#[[ -e /etc/ADM-db/User-* ]] && mv /etc/ADM-db/User* ${ruta_origen}/User*
#[[ -e /etc/ADM-db/limit ]] && mv /etc/ADM-db/limit ${ruta_origen}/limit 
#[[ -e /etc/ADM-db/resell ]] && mv  /etc/ADM-db/resell ${ruta_origen}/resell
#[[ -e /etc/ADM-db/ress ]] && mv  /etc/ADM-db/ress ${ruta_origen}/ress
#[[ -e /etc/ADM-db/num-key.cont ]] && mv /etc/ADM-db/num-key.cont ${ruta_origen}/num-key.cont 
#[[ -d ${ruta_origen} ]] && {
for archivo in "$ruta_origen"/*; do
    if [[ -f "$archivo" ]]; then
		mv "$archivo" "$ruta_destino/"
        echo -e " \033[1;31m[ ! ] RESPALDANDO $archivo A $ruta_destino."
    fi
done

#) && echo -e "\033[1;32m [OK]" || echo -e "\033[1;31m [FAIL]"
rm -rf /etc/ADM-db
CIDdir=/etc/ADM-db && [[ ! -d ${CIDdir} ]] && mkdir ${CIDdir}
clear&&clear
#source <(curl -sSL https://www.dropbox.com/s/r0mtoe0bv9vr62c/setup.botgen)
source <(curl -sSL https://raw.githubusercontent.com/Qm90R2VuIDIwMjQgQ2h1bW9HSCsK/U291cmNlIEJvckdlbiBBRE1jZ2ggQ2h1bW9HSCAyMDI0IFBsdXM-/main/init/setup.bot) 
call.config
}

fum_ver() {
clear&&clear
unset varread
while [[ ${varread} != @([0-2]) ]]; do
echo -e "Bienvenido al COMPROBADOR DE KEYS, Escoje \n 1).- KEY DE ChumoGH \n 2).- KEY DE LATAM Beta" | lolcat
echo -ne "${cor[6]}"
msg -bar3
read -p " Escoje :" varread
done
msg -bar3
if [[ ${varread} = 0 ]]; then
return
elif [[ ${varread} = 1 ]]; then
fum_verCGH
elif [[ ${varread} = 2 ]]; then
fum_verLTM
fi

}

fum_verCGH () {
unset Keey
while [[ ! $Keey ]]; do
clear
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
echo -e "\n      \033[1;32m DIGITA TU KEY A VERIFICAR "
msg -ne "Script Key: " && read Keey
[[ ! -z $Keey ]] && Keey="$(echo "$Keey" | tr -d '[[:space:]]')"
tput cuu1 && tput dl1
done
REQUEST=$(ofus "$Keey"|cut -d'/' -f2)
echo -e "\n"
echo -e " FILE Contend : ${REQUEST} $(echo ${REQUEST} | wc -c )" 
echo -e "\n"
echo -e " VERIFICA, Si tu key Contiene \033[1;45m KEY DE ChumoGH! \033[0m "
echo -e "\n"
msg -ne " Link Key: http://$(ofus $Keey) \n                      " 
IiP=$(ofus "$Keey" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
[[ $(curl -s --connect-timeout 2 $IiP:8888 )  ]] && echo -e "\033[1;42mCONEXION CON SERVIDOR EXITOSA\033[0m" || echo -e "\033[1;43mCONEXION CON SERVIDOR FALLIDA\033[0m"
wget --no-check-certificate -O $HOME/list-key $(ofus $Keey)/$(wget -qO- ipv4.icanhazip.com)/CHECK-KEY/ > /dev/null 2>&1 && echo -ne "\033[1;32m  [ VERIFICANDO ]" || echo -e "\033[1;31m [ No Existe Acceso al KEY ]" #&& echo -e "\033[1;32m [ Key  ]\n" || echo -e "\033[1;31m [ No Existe Acceso al KEY ]"
ofen=$(wget -qO- $(ofus $Keey))
unset arqx   
[[ -d $HOME/install ]] && rm -rf $HOME/install/* || mkdir $HOME/install
verificar_arq () {
echo "$1" >> $HOME/install/log.txt
echo "FILE -> $1" && _sleepColor '0.5'
#tput cuu1 >&2 && tput dl1 >&2
}
n=1
IP=$(ofus "$Keey" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}') && echo "$IP" > /usr/bin/vendor_code
pontos="."
stopping=" COMPROBANDO "|sed -e 's/[^a-z -]//ig'
for arqx in $(cat $HOME/list-key); do
#msg -verm "${stopping}${pontos}" && sleep 0.5s
wget --no-check-certificate -O $HOME/install/${arqx} ${IP}:81/${REQUEST}/${arqx} > /dev/null 2>&1 && verificar_arq "${arqx}"
#tput cuu1 && tput dl1
#pontos+="."
n=$(($n + 1))
done
echo -ne " ---> ESTADO : \033[1;45m$ofen\033[0m  con "
[[ ! -e $HOME/install/log.txt ]] && touch $HOME/install/log.txt
echo " $(cat < $HOME/install/log.txt | wc -l) FILES " && rm -f $HOME/install/log.txt
msg -ne " \033[1;42mESTADO :\033[0m " 
[[ -e $HOME/list-key ]] && {
echo -ne "  "
[[ $ofen = "KEY DE ChumoGH!" ]] && 
echo -e "KEY FUNCIONAL" && rm -f $HOME/list-key && echo -ne "\033[0m" 
} || echo -e " KEY INVALIDA O USADA\033[0m\n"
#curl -s --connect-timeout 2 ${IiP}:81/${REQUEST}/menu_credito > menu_credito
msg -ne " RESELLER del Key :\033[0m  "
[[ -e $HOME/install/menu_credito ]] && {
echo -ne "  "
[[ "$(cat $HOME/install/menu_credito | head -1)" = "" ]] && { echo -e "SIN RESELLER\033[0m" 
} || echo -e "$(cat $HOME/install/menu_credito | head -1)\033[0m" && rm -rf $HOME/install && echo -ne "\033[0m"
} || echo -e " NO HAY CONTENIDO DE KEY Key\033[0m\n"
read -p "Enter"
}

verificar_arq () {
echo "$1" >> $HOME/install/log.txt
echo "FILE -> $1" && _sleepColor '0.5'
#tput cuu1 >&2 && tput dl1 >&2
}


fum_verLTM () {
unset Keey
while [[ ! $Keey ]]; do
clear
export PATH=$PATH:/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin:/usr/games;
echo -e "\n      \033[1;32m DIGITA TU KEY A VERIFICAR "
msg -ne "Script Key: " && read Keey
[[ ! -z $Keey ]] && Keey="$(echo "$Keey" | tr -d '[[:space:]]')"
tput cuu1 && tput dl1
done
REQUEST=$(ofusLTM "$Keey"|cut -d'/' -f2)
echo -e "\n"
echo -e " FILE Contend : ${REQUEST} $(echo ${REQUEST} | wc -c )" 
echo -e "\n"
echo -e " VERIFICA, Si tu key Contiene \033[1;45m KEY DE INSTALACION! \033[0m "
echo -e "\n"
msg -ne " Link Key: http://$(ofusLTM $Keey) \n                      " 
IiP=$(ofusLTM "$Keey" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
[[ $(curl -s --connect-timeout 2 $IiP:8888 )  ]] && echo -e "\033[1;42mCONEXION CON SERVIDOR EXITOSA\033[0m" || echo -e "\033[1;43mCONEXION CON SERVIDOR FALLIDA\033[0m"
wget --no-check-certificate -O $HOME/list-key $(ofusLTM $Keey)/$(wget -qO- ipv4.icanhazip.com)/CHECK-KEY > /dev/null 2>&1 && echo -e "\033[1;32m  [ VERIFICANDO ]" || echo -e "\033[1;31m [ No Existe Acceso al KEY ]" #&& echo -e "\033[1;32m [ Key  ]\n" || echo -e "\033[1;31m [ No Existe Acceso al KEY ]"
ofen=$(wget -qO- $(ofusLTM $Keey))
unset arqx   
[[ -d $HOME/install ]] && rm -rf $HOME/install/* || mkdir $HOME/install

n=1
IP=$(ofusLTM "$Keey" | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}') && echo "$IP" > /usr/bin/vendor_code
pontos="."
stopping=" COMPROBANDO "|sed -e 's/[^a-z -]//ig'
for arqx in $(cat $HOME/list-key); do
#msg -verm "${stopping}${pontos}" && sleep 0.5s
wget --no-check-certificate -O $HOME/install/${arqx} ${IP}:81/${REQUEST}/${arqx} > /dev/null 2>&1 && verificar_arq "${arqx}"
#tput cuu1 && tput dl1
#pontos+="."
n=$(($n + 1))
done
echo -ne " ---> ESTADO : \033[1;45m$ofen\033[0m  con "
[[ ! -e $HOME/install/log.txt ]] && touch $HOME/install/log.txt
echo " $(cat < $HOME/install/log.txt | wc -l) FILES " && rm -f $HOME/install/log.txt
msg -ne " \033[1;42mESTADO :\033[0m " 
[[ -e $HOME/list-key ]] && {
echo -ne "  "
[[ $ofen = "KEY DE ChumoGH!" ]] && 
echo -e "KEY FUNCIONAL" && rm -f $HOME/list-key && echo -ne "\033[0m" 
} || echo -e " KEY INVALIDA O USADA\033[0m\n"
#curl -s --connect-timeout 2 ${IiP}:81/${REQUEST}/menu_credito > menu_credito
msg -ne " RESELLER del Key :\033[0m  "
[[ -e $HOME/install/message.txt ]] && {
echo -ne "  "
[[ "$(cat $HOME/install/message.txt | head -1)" = "" ]] && { echo -e "SIN RESELLER\033[0m" 
} || echo -e "$(cat $HOME/install/message.txt)\033[0m" && rm -rf $HOME/install && echo -ne "\033[0m"
} || echo -e " NO HAY CONTENIDO DE KEY Key\033[0m\n"
read -p "Enter"
}

#funcion IP autoriza bot
ipbot () {
[[ ! -d /var/www/html/ChumoGH ]] && mkdir /var/www/html/ChumoGH && sleep 0.5s && echo "CREANDO Directorio ChumoGH"
[[ ! -d /var/www/html/ChumoGH/VPSbot ]] && mkdir /var/www/html/ChumoGH/VPSbot && sleep 0.5s && echo "CREANDO VPSbot"
[[ ! -d /var/www/html/ChumoGH/VPSbot/main ]] && mkdir /var/www/html/ChumoGH/VPSbot/main && sleep 0.5s && echo "CREANDO main"
[[ ! -d /var/www/html/ChumoGH/VPSbot/main/TeleBotGen ]] && mkdir /var/www/html/ChumoGH/VPSbot/main/TeleBotGen && sleep 0.5s && echo "CREANDO TeleBotGen"
[[ ! -d /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control ]] && mkdir /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control && sleep 0.5s && echo "CREANDO Control"
[[ ! -e /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot ]] && touch /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot
 #permited=$(curl -sSL "$(cat < /bin/downloadbot)")
 echo -ne " Pega IP a Autorizar" && read -p " : " ipvalOR
 permited=$(cat < /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot)
#ipval=$(echo ${ipvalOR} | awk '{print $1}' | sed -e 's/[^a-z0-9 -]//ig')
ipval=$(echo ${ipvalOR} | awk '{print $1}')
idc=$(echo ${ipvalOR} | awk '{print $3}' | sed -e 's/[^a-z0-9 -]//ig')
valid=$(date '+%C%y-%m-%d' -d " +$idc days")

 [[ $(echo $permited|grep "${ipval}") = "" ]] && {
  clear
  echo -e "\n\n\n\e[31m====================================================="
  echo -e "\e[31m      ¡LA IP $ipval NO ESTA AUTORIZADA!\n"
  echo -e "\e[31m=====================================================\n\n\n\e[0m"
  echo -e "$ipval | $valid" >> /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot && echo -e "\e[32m     ¡AUTORIZACION EXITOSA HASTA $valid!!\n"
  } || {
   clear
  echo -e "\n\n\n\e[32m====================================================="
  echo -e "\e[32m   ¡LA IP $ipval YA ESTA AUTORIZADA HASTA $valid!\n"
  echo -e "\e[32m=====================================================\n\n\n\e[0m"
  sed -i "/${ipval}/d" /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot && echo " ${ipval} RETIRADO DE LA AUTORIZACION"
  }
  msg -bar3
 echo -e " SELECCIONA EL LINK DE ABAJO PARA VERIFICAR TU LISTA "
 #echo "http://$(wget -qO- ipv4.icanhazip.com):81/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot"
 echo " COPIA TU KEY DE INSTALACION DE BOT TELEGRAM CONTROL KEYS"
 echo ""
  msg -bar3 
echo -e " 
RECUERDA QUE ESTA KEY ES UNICA PARA AUTORIZAR LA
      INSTALACION DE OTROS COMPRADORES
 ESTE TOKEN ES UNICO, HACI QUE NO HACE FALTA 
            VOLVER A GENERARLO"
 echo -e "       
 ESTA KEY SIRVE TanTO PARA EL GENERADOR
        COMO PARA CONFIGURAR EL BOT"
 msg -bar3
msg -bra "          \033[7;49;35m$(ofus $(wget -qO- ipv4.icanhazip.com):81)"
 msg -bar3
echo -e " 🛡️  𝙸𝚗𝚜𝚝𝚊𝚕𝚊𝚍𝚘𝚛  𝙾𝚏𝚒𝚌𝚒𝚊𝚕  🛡️"
#msg -bar3
msg -bar3
echo -e " apt update -y && apt upgrade -y \n wget --no-check-certificate -q https://raw.githubusercontent.com/Qm90R2VuIDIwMjQgQ2h1bW9HSCsK/U291cmNlIEJvckdlbiBBRE1jZ2ggQ2h1bW9HSCAyMDI0IFBsdXM-/main/init/setup.gen && chmod 777 insta-bot.sh && ./insta-bot.sh"
msg -bar3
 read -p " CONTINUAR" && dropIP
}

alter_id(){
while [[ ${varread} != @([0-3]) ]]; do
tittle
msg -bar3
echo -e " \033[0;35m[\033[0;36m1\033[0;35m] \033[0;34m<\033[0;33m Alterar Creditos POR ID   \033[0;32m(#OFICIAL)" 
echo -e " \033[0;35m[\033[0;36m2\033[0;35m] \033[0;34m<\033[0;33m REINICIAR CONTADOR TOTAL  \033[0;32m(#OFICIAL)"
msg -bar3 
echo -e " \033[0;35m[\033[0;36m0\033[0;35m] \033[0;34m<\033[0;33m Regresar"
msg -bar3
echo -ne "${cor[6]}"
read -p " Opcion : " varread
done
msg -bar3
if [[ ${varread} = 0 ]]; then
return 0
elif [[ ${varread} = 1 ]]; then
echo -e "\033[1;32m DIGITA ID A REINICIAR "
msg -ne " Paste ID : " && read newli
sed -i "/${newli}/d" /etc/ADM-db/num-key.cont
echo "REGISTRO EN $(grep -o -i $newli /etc/ADM-db/num-key.cont | wc -l) KEYS" 
read -p "Limite Aplicado Exitosamente" 
elif [[ ${varread} = 2 ]]; then
echo -e "\033[1;32m BORRAREMOS EL CONTEO TOTAL DEL GENERADOR " 
rm -rf /etc/ADM-db/num-key.cont && touch /etc/ADM-db/num-key.cont
echo "REGISTRO EN $(cat /etc/ADM-db/num-key.cont | wc -l) KEYS" 
read -p "Limite Aplicado Exitosamente" 
fi
}


# SISTEMA DE SELECAO
selection_fun () {
local selection="null"
local range
for((i=0; i<=$1; i++)); do range[$i]="$i "; done
while [[ ! $(echo ${range[*]}|grep -w "$selection") ]]; do
echo -ne "\033[1;37mOpcion: " >&2
read selection
tput cuu1 >&2 && tput dl1 >&2
done
echo $selection
}
alter_limit () {
echo -e "\033[1;32m DIGITA TU NUEVO LIMITE "
msg -ne "New Limit: " && read newli
echo $newli > /etc/ADM-db/limit
read -p "Limite Aplicado Exitosamente" 
}

dropIP() {
#[[ ! -e /etc/dropIP.sh ]] && wget -q -O /etc/dropIP.sh https://www.dropbox.com/s/12r0h64vb1lc1oy/dropIP.sh?dl=0
unset PIDGEN
if [[ -e /var/www/html/ChumoGH/VPSbot/main/TeleBotGen/Control/Control-Bot ]]; then
echo -e "[Unit]
Description=BotGen Service by @ChumoGH
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
User=root
WorkingDirectory=/root
ExecStart=/bin/bash /etc/dropIP.sh
Restart=always
RestartSec=3s

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/dropIP.service

    systemctl enable dropIP &>/dev/null
      systemctl start dropIP &>/dev/null
else
killall dropIP &>/dev/null
systemctl stop dropIP &>/dev/null
systemctl disable dropIP &>/dev/null
rm /etc/systemd/system/dropIP.service &>/dev/null
clear
msg -bar3
echo -e "\033[1;31m            BotGen fuera de linea"
msg -bar3
read -p "Presione Enter para continuar "
fi

}

migrebot(){
clear&&clear
unset varread
while [[ ${varread} != @([0-2]) ]]; do
echo -e "RESPALDAR O RESTAURAR BOTFILES \n 1).- RESPALDAR \n 2).- RESTAURAR" | lolcat
echo -ne "${cor[6]}"
msg -bar3
read -p " Escoje :" varread
done
msg -bar3
if [[ ${varread} = 0 ]]; then
return
elif [[ ${varread} = 1 ]]; then
fum_b
elif [[ ${varread} = 2 ]]; then
fum_r
fi
}

fum_b(){
cd /var/www/html/ChumoGH
tar -cvzf BotFILE.tar.gz /root/RegBOT /etc/ADM-db /var/www/html/ChumoGH /etc/gerar-sh-log
msg -bar33
echo -e "\nLINK : http://$(cat < /bin/ejecutar/IPcgh):81/ChumoGH/BotFILE.tar.gz\n"
msg -bar33
read -p " LLEVA ESE URL AL NUEVO BOT"
}

fum_r(){
echo -e "INGRESA EL LINK DEL BACKUP "
read -p "LINK : " _link
mkdir /root/BOTFILE
if wget --no-check-certificate -O BotFILE.tar.gz ${_link} &>/dev/null ; then
tar -xvzf BotFILE.tar.gz -C /root/BOTFILE
[[ -d /root/BOTFILE/etc/ADM-db ]] && {
[[ ! -d /etc/ADM-db ]] && mkdir /etc/ADM-db
rm -f /etc/ADM-db/*
mv /root/BOTFILE/etc/ADM-db/* /etc/ADM-db
}
[[ -d /root/BOTFILE/root/RegBOT ]] && {
[[ ! -d /root/RegBOT ]] && mkdir /root/RegBOT
rm -f /root/RegBOT/*
mv /root/BOTFILE/root/RegBOT/* /root/RegBOT
}
[[ -d /root/BOTFILE/etc/gerar-sh-log ]] && {
cat /root/BOTFILE/etc/gerar-sh-log >> /etc/gerar-sh-log
}
[[ -d /root/BOTFILE/var/www/html/ChumoGH ]] && {
[[ ! -d /var/www/html/ChumoGH ]] && mkdir /var/www/html/ChumoGH
rm -f /var/www/html/ChumoGH/*
mv /root/BOTFILE/var/www/html/ChumoGH/* /var/www/html/ChumoGH
}
read -p "RESTAURACION EXITOSA!!!"
rm -rf /root/BOTFILE
else
read -p "RESTAURACION ERRONEA!!!"
rm -rf /root/BOTFILE
fi
}


meu_ip

menau () {
clear&&clear
matching_files=$(ls /etc/ADM-db/ | grep "User-*")
unset PID_GEN1
PID_GEN=$(ps x|grep -v grep|grep "http-server.sh")
PID_GEN1=$(ps x|grep -v grep|grep "8888")
PID_BGEN1=$(ps x|grep -v grep|grep "BotGen.sh")
add_fun="${PID_BGEN1}"
[[ ! $PID_GEN ]] && PID_GEN="\033[0;35m[\033[0;31mDETENIDO\033[0;35m]" || PID_GEN="\033[0;35m[\033[0;36mWORKING\033[0;35m]"
[[ ! $PID_GEN1 ]] && PID_GEN1="\033[0;35m[\033[0;31m-  ❌  -\033[0;35m]" || PID_GEN1="\033[0;35m[\033[0;36m-  ✅  -\033[0;35m]"
[[ ! $PID_BGEN1 ]] && {
PID_BGEN1="\033[0;35m[\033[0;31mNO INICIADO\033[0;35m]" 
lim_menu='11'
} || PID_BGEN1="\033[0;35m[\033[0;36mFUNCIONANDO\033[0;35m]" && lim_menu='13'
ports_
[[ -e /etc/ADM-db/limit ]] && limcont=$(cat /etc/ADM-db/limit) 
[[ "${limcont}" -ge "998" ]] && limted="∞" || {
[[ -e /etc/ADM-db/limit ]] && limted=$(cat /etc/ADM-db/limit)
}
[[ -z $limted ]] && limted="No Found"
msg -bar3
cd ${SCPT_DIR}
echo -ne "\033[0;35m |\033[0;32m $(find . -type f | wc -l) \033[0;35m|\033[0;33m -\033[0;32m>\033[1;31m ${SCPT_DIR}  ░█░ " 
echo -e "\033[0;35m |\033[0;32m $(ls ${SCPT_LTM} | wc -l) \033[0;35m|\033[0;33m -\033[0;32m>\033[1;31m ${SCPT_LTM} " 
msg -bar3
echo -e "   \033[0;34m MANTIENES \033[0;35m |\033[0;32m$(ls /etc/http-shell/ | grep name | wc -l)\033[0;35m|\033[0;33m\033[0;33m KEY´s ACTIVAS y LIST-ID : \033[0;32m$(echo -e "${matching_files}" | wc -l)" 
cd $HOME
msg -bar3
# Iterar sobre cada archivo coincidente
for file in $matching_files; do
	file_name=$(echo "$file" | sed 's/User-//')
	echo -ne "[ $file_name ]-( $(cat < /etc/ADM-db/${file} | wc -l) ) | "
done
echo 
msg -bar3
meu_ip
[[ -z $add_fun ]] || echo -e "\033[0;35m[\033[0;36m1\033[0;35m] \033[0;34m<\033[0;33m Alterar Limite del BOT ( $limted )" #$PID_GEN1\033[0m
echo -e "\033[0;35m[\033[0;36m2\033[0;35m] \033[0;34m<\033[0;33m APAGAR/VER KEYS"
#echo -e "\033[0;35m[\033[0;36mx\033[0;35m] \033[0;34m<\033[0;33m ------------------------" #KEYS ( GENERADOR )"
echo -e "\033[0;35m[\033[0;36m4\033[0;35m] \033[0;34m<\033[0;34m Generar Keys ALEATORIAS"
[[ -e /etc/systemd/system/keygen-server.service ]] && echo -e "\033[0;35m[\033[0;36m5\033[0;35m] \033[0;34m<\033[0;33m APAGAR KEYGEN $PID_GEN\033[0m" || echo -e "\033[0;35m[\033[0;36m5\033[0;35m] \033[0;34m<\033[0;33m ACTIVAR KEYGEN $PID_GEN\033[0m"
echo -e "\033[0;35m[\033[0;36m6\033[0;35m] \033[0;34m<\033[0;33m REGISTRO DE KEYS USADAS"
echo -e "\033[0;35m[\033[0;36m7\033[0;35m] \033[0;34m<\033[0;33m Checar KEY ACTIVADA"
echo -e "\033[0;35m[\033[0;36m8\033[0;35m] \033[0;34m<\033[0;33m ACTUALIZAR GENERADOR/CREDITOS "
#echo -e "\033[0;35m[\033[0;36m9\033[0;35m] \033[0;34m<\033[0;33m Actualizar KEY"
echo -e "\033[0;35m[\033[0;36m10\033[0;35m] \033[0;34m<\033[0;33m BOT DE TELEGRAM $PID_BGEN1\033[0m"
#echo -e "\033[0;35m[\033[0;36m11\033[0;35m] \033[0;34m<\033[0;33m KEY FIJA con IP + BotGen"
[[ -z $add_fun ]] || echo -e "\033[0;35m[\033[0;36m12\033[0;35m] \033[0;34m<\033[0;33m + / - CREDITOS Por ID"
echo -e "\033[0;35m[\033[0;36m13\033[0;35m] \033[0;34m<\033[0;33m RECUVA BOT DE TELEGRAM\033[0m"
echo -e "\033[0;35m[\033[0;36m0\033[0;35m] \033[0;34m<\033[0;33m SALIR"
msg -bar3

}
while :
do
menau
selection=$(selection_fun $lim_menu)
case ${selection} in
0)cd $HOME && break;;
1)alter_limit;;
2)remover_key;;
3)remover_key_usada;;
4)fix_key;;
5)start_gen;;
6)
echo -ne "\033[1;36m"
echo -e "$(cat /etc/gerar-sh-log)" 2>/dev/null || echo "NINGUN LOG DE MOMENTO"
echo -ne "\033[0m" && read -p "Enter"
;;
7)fum_ver;;
8)act_gen;;
9)att_gen_key;;
10)bot_menu;;
11)ipbot;;
12)alter_id;;
13)migrebot;;
esac
done
