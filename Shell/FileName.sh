#!/usr/bin/bash

NUM=$1
GITHUB_ENV=$2
#1.0	108M
export FILENAME=$SERIAL'.'$NUM'-360T7-'$NAME'-108M'
export BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN'
export FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory'
export SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade'

echo "FILENAME=$FILENAME" >> $GITHUB_ENV
echo "BIN=$BIN" >> $GITHUB_ENV
echo "FACTORY=$FACTORY" >> $GITHUB_ENV
echo "SYSUPGRADE=$SYSUPGRADE" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.1	stock（非108M 原厂Uboot）
export VanillaFILENAME=$SERIAL'.'$NUM'-360T7-'$NAME
export VanillaBIN=$SERIAL'.'$NUM'-360T7-'$NAME'-BIN'
export VanillaFACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-factory'
export VanillaSYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-sysupgrade'

echo "VanillaFILENAME=$VanillaFILENAME" >> $GITHUB_ENV
echo "VanillaBIN=$VanillaBIN" >> $GITHUB_ENV
echo "VanillaFACTORY=$VanillaFACTORY" >> $GITHUB_ENV
echo "VanillaSYSUPGRADE=$VanillaSYSUPGRADE" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.2	upnp+ttyd+filetransfer
export mini-BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-mini'
export mini-FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-mini'
export mini-SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-mini'

echo "mini-BIN=${mini-BIN}" >> $GITHUB_ENV
echo "mini-FACTORY=${mini-FACTORY}" >> $GITHUB_ENV
echo "mini-SYSUPGRADE=${mini-SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.3	 ssrplus
export ssrplus-BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-ssrplus'
export ssrplus-FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-ssrplus'
export ssrplus-SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-ssrplus'

echo "ssrplus-BIN=${ssrplus-BIN}" >> $GITHUB_ENV
echo "ssrplus-FACTORY=${ssrplus-FACTORY}" >> $GITHUB_ENV
echo "ssrplus-SYSUPGRADE=${ssrplus-SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.4	passwall
export passwall-BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-passwall'
export passwall-FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-passwall'
export passwall-SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-passwall'

echo "passwall-BIN=${passwall-BIN}" >> $GITHUB_ENV
echo "passwall-FACTORY=${passwall-FACTORY}" >> $GITHUB_ENV
echo "passwall-SYSUPGRADE=${passwall-SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.5	openclash
export openclash-BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-openclash'
export openclash-FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-openclash'
export openclash-SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-openclash'

echo "openclash-BIN=${openclash-BIN}" >> $GITHUB_ENV
echo "openclash-FACTORY=${openclash-FACTORY}" >> $GITHUB_ENV
echo "openclash-SYSUPGRADE=${openclash-SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.6	openclash-ssrplus-passwall
export openclash-ssrplus-passwall-BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-openclash-ssrplus-passwall'
export openclash-ssrplus-passwall-FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-openclash-ssrplus-passwall'
export openclash-ssrplus-passwall-SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-openclash-ssrplus-passwall'

echo "openclash-ssrplus-passwall-BIN=${openclash-ssrplus-passwall-BIN}" >> $GITHUB_ENV
echo "openclash-ssrplus-passwall-FACTORY=${openclash-ssrplus-passwall-FACTORY}" >> $GITHUB_ENV
echo "openclash-ssrplus-passwall-SYSUPGRADE=${openclash-ssrplus-passwall-SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
		  
echo "FILENAME： $FILENAME" 
echo "BIN： $BIN" 
echo "FACTORY： $FACTORY" 
echo "SYSUPGRADE： $SYSUPGRADE"
echo "VanillaFILENAME： $VanillaFILENAME"
echo "VanillaBIN： $VanillaBIN"
echo "VanillaFACTORY： $VanillaFACTORY" 
echo "VanillaSYSUPGRADE： $VanillaSYSUPGRADE" 

echo NUM=$NUM >> $GITHUB_ENV
export GITHUB_ENV
