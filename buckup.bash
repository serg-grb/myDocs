#!/bin/bash
NOW=$(date +%Y%m%d_%H%M)
MNOW=$(date +%Y%m)
MON=$(date +%m)
DESC=1
if [ $MON = "01"]
  then
  DESC=89
fi
PMMOW=$(( $MNOW - $DESC ))
#PMMOW=$(date --date "$(date +%Y-%m-01) -1 day" +%Y%m)

BACKUP_HOME="/tmp/home/"
ARCHIVES_DIR="/tmp/backup/"

DOW=`date +%a`              # Day of the week e.g. Mon
DOM=`date +%d`              # Date of the Month e.g. 27
DM=`date +%d%b`             # Date and Month e.g. 27Sep

if [[ ! -d ${ARCHIVES_DIR}${MNOW} ]]
  then
    mkdir ${ARCHIVES_DIR}${MNOW}
elif [[ -d ${ARCHIVES_DIR}${PMNOW} ]]
  then
        rm -r ${ARCHIVES_DIR}${PMNOW}
else
    echo &>/dev/null
fi

tar --exclude-from=/home/dm/mybin/.backup.excludes -v -z --create --file ${ARCHIVES_DIR}${MNOW}/${NOW}.tar.gz --listed-incremental=${ARCHIVES_DIR}${MNOW}/${MNOW}.snar $BACKUP_HOME &> ${ARCHIVES_DIR}${MNOW}/${NOW}.log


#!/bin/bash
NOW=$(date +%Y%m%d_%H%M)
MNOW=$(date +%Y%m)
MON=$(date +%m)
DESC=1
if [ $MON = "01" ]
then
        DESC=89
fi
PMNOW=$(( $MNOW - $DESC ))

BACKUP_HOME="/mnt/share/"
ARCHIVES_DIR="/mnt/reserv/"

DOW=`date +%a`              # Day of the week e.g. Mon
DOM=`date +%d`              # Date of the Month e.g. 27
DM=`date +%d%b`             # Date and Month e.g. 27Sep

if [[ ! -d ${ARCHIVES_DIR}${MNOW} ]];
  then
    mkdir ${ARCHIVES_DIR}${MNOW}
elif [[ -d ${ARCHIVES_DIR}${PMNOW} ]];
  then
     rm -r ${ARCHIVES_DIR}${PMNOW}
else
    echo &>/dev/null
fi

tar --exclude-from=/home/serg/scripts/.backup.excludes -v -z --create --file ${ARCHIVES_DIR}${MN
OW}/${NOW}.tar.gz --listed-incremental=${ARCHIVES_DIR}${MNOW}/${MNOW}.snar $BACKUP_HOME &> ${ARC
HIVES_DIR}${MNOW}/${NOW}.log