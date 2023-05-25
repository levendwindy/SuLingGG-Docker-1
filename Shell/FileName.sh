#!/usr/bin/bash
local FILENAME=$SERIAL'.$NUM-360T7-'$NAME'-108M'
local BIN=$SERIAL'.$NUM-360T7-'$NAME'-108M-BIN'
local FACTORY=$SERIAL'.$NUM-360T7-'$NAME'-108M-squashfs-factory'
local SYSUPGRADE=$SERIAL'.$NUM-360T7-'$NAME'-108M-squashfs-sysupgrade'

export FILENAME
export BIN
export FACTORY
export SYSUPGRADE

echo "FILENAME=$FILENAME" >> $GITHUB_ENV
echo "BIN=$BIN" >> $GITHUB_ENV
echo "FACTORY=$FACTORY" >> $GITHUB_ENV
echo "SYSUPGRADE=$SYSUPGRADE" >> $GITHUB_ENV

local VanillaFILENAME=$SERIAL'.$NUM-360T7-'$NAME
local VanillaBIN=$SERIAL'.$NUM-360T7-'$NAME'-BIN'
local VanillaFACTORY=$SERIAL'.$NUM-360T7-'$NAME'-squashfs-factory'
local VanillaSYSUPGRADE=$SERIAL'.$NUM-360T7-'$NAME'-squashfs-sysupgrade'

export VanillaFILENAME=$SERIAL'.$NUM-360T7-'$NAME
export VanillaBIN=$SERIAL'.$NUM-360T7-'$NAME'-BIN'
export VanillaFACTORY=$SERIAL'.$NUM-360T7-'$NAME'-squashfs-factory'
export VanillaSYSUPGRADE=$SERIAL'.$NUM-360T7-'$NAME'-squashfs-sysupgrade'

echo "VanillaFILENAME=$VanillaFILENAME" >> $GITHUB_ENV
echo "VanillaBIN=$VanillaBIN" >> $GITHUB_ENV
echo "VanillaFACTORY=$VanillaFACTORY" >> $GITHUB_ENV
echo "VanillaSYSUPGRADE=$VanillaSYSUPGRADE" >> $GITHUB_ENV

export NUM=$(($NUM+1)) && echo "NUM=$NUM" >> $GITHUB_ENV
		  
echo "FILENAME： $FILENAME" 
echo "BIN： $BIN" 
echo "FACTORY： $FACTORY" 
echo "SYSUPGRADE： $SYSUPGRADE"
echo "VanillaFILENAME： $VanillaFILENAME"
echo "VanillaBIN： $VanillaBIN"
echo "VanillaFACTORY： $VanillaFACTORY" 
echo "VanillaSYSUPGRADE： $VanillaSYSUPGRADE" 
