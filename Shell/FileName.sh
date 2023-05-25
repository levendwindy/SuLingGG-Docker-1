#!/usr/bin/bash

NUM=$1
GITHUB_ENV=$2
#1.0	stock（非108M 原厂Uboot）
export VanillaFILENAME=$SERIAL'.'$NUM'-360T7-'$NAME
export VanillaBIN=$SERIAL'.'$NUM'-360T7-'$NAME'-BIN'
export VanillaFACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-factory'
export VanillaSYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-sysupgrade'

echo "VanillaFILENAME=$VanillaFILENAME" >> $GITHUB_ENV
echo "VanillaBIN=$VanillaBIN" >> $GITHUB_ENV
echo "VanillaFACTORY=$VanillaFACTORY" >> $GITHUB_ENV
echo "VanillaSYSUPGRADE=$VanillaSYSUPGRADE" >> $GITHUB_ENV

export NUM=$((NUM+1))

#1.1	108M
export FILENAME=$SERIAL'.'$NUM'-360T7-'$NAME'-108M'
export BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN'
export FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory'
export SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade'

echo "FILENAME=$FILENAME" >> $GITHUB_ENV
echo "BIN=$BIN" >> $GITHUB_ENV
echo "FACTORY=$FACTORY" >> $GITHUB_ENV
echo "SYSUPGRADE=$SYSUPGRADE" >> $GITHUB_ENV

export NUM=$((NUM+1))


#1.2	upnp+ttyd+filetransfer
export mini_BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-mini'
export mini_FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-mini'
export mini_SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-mini'

echo "mini_BIN=${mini_BIN}" >> $GITHUB_ENV
echo "mini_FACTORY=${mini_FACTORY}" >> $GITHUB_ENV
echo "mini_SYSUPGRADE=${mini_SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.3	 ssrplus
export ssrplus_BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-ssrplus'
export ssrplus_FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-ssrplus'
export ssrplus_SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-ssrplus'

echo "ssrplus_BIN=${ssrplus_BIN}" >> $GITHUB_ENV
echo "ssrplus_FACTORY=${ssrplus_FACTORY}" >> $GITHUB_ENV
echo "ssrplus_SYSUPGRADE=${ssrplus_SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.4	passwall
export passwall_BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-passwall'
export passwall_FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-passwall'
export passwall_SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-passwall'

echo "passwall_BIN=${passwall_BIN}" >> $GITHUB_ENV
echo "passwall_FACTORY=${passwall_FACTORY}" >> $GITHUB_ENV
echo "passwall_SYSUPGRADE=${passwall_SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.5	openclash
export openclash_BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-openclash'
export openclash_FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-openclash'
export openclash_SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-openclash'

echo "openclash_BIN=${openclash_BIN}" >> $GITHUB_ENV
echo "openclash_FACTORY=${openclash_FACTORY}" >> $GITHUB_ENV
echo "openclash_SYSUPGRADE=${openclash_SYSUPGRADE}" >> $GITHUB_ENV

export NUM=$((NUM+1))
#1.6	openclash_ssrplus_passwall
export openclash_ssrplus_passwall_BIN=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-BIN-openclash-ssrplus-passwall'
export openclash_ssrplus_passwall_FACTORY=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-factory-openclash-ssrplus-passwall'
export openclash_ssrplus_passwall_SYSUPGRADE=$SERIAL'.'$NUM'-360T7-'$NAME'-108M-sysupgrade-openclash-ssrplus-passwall'

echo "openclash_ssrplus_passwall_BIN=${openclash_ssrplus_passwall_BIN}" >> $GITHUB_ENV
echo "openclash_ssrplus_passwall_FACTORY=${openclash_ssrplus_passwall_FACTORY}" >> $GITHUB_ENV
echo "openclash_ssrplus_passwall_SYSUPGRADE=${openclash_ssrplus_passwall_SYSUPGRADE}" >> $GITHUB_ENV

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
