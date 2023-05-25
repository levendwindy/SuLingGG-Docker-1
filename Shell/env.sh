#!/usr/bin/bash

          export SERIALNUM=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $1}')
          echo "SERIALNUM=$SERIALNUM" >> $GITHUB_ENV
          
          export NAME=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $2}')
          echo "NAME=$NAME" >> $GITHUB_ENV
          
          export CONFIG_FILE=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $2}')".config"
          echo "CONFIG_FILE=$CONFIG_FILE" >> $GITHUB_ENV
          
          REPO_URL='https://github.com/'$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $3}') 
          echo "REPO_URL=$REPO_URL" >> $GITHUB_ENV
          
          export REPO_BRANCH=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $4}')
          echo "REPO_BRANCH=$REPO_BRANCH" >> $GITHUB_ENV
          
          export DIY_P1_SH=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $5}' )
          echo "DIY_P1_SH=$DIY_P1_SH" >> $GITHUB_ENV
          
          export DIY_P2_SH=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $6}' )
          echo "DIY_P2_SH=$DIY_P2_SH" >> $GITHUB_ENV
          
          export ORTHER=$(echo ${{ matrix.TARGETS }} | awk -F '，' '{print $7}')
          echo "ORTHER=$ORTHER" >> $GITHUB_ENV
          
          echo -e "\033[31m SERIALNUM:  $SERIALNUM \033[0m"
          echo -e "\033[31m NAME:  $NAME \033[0m"
          echo -e "\033[31m CONFIG_FILE:  $CONFIG_FILE \033[0m"
          echo -e "\033[31m REPO_URL:  $REPO_URL \033[0m"
          echo -e "\033[31m REPO_BRANCH:  $REPO_BRANCH \033[0m"
          echo -e "\033[31m DIY_P1_SH:  $DIY_P1_SH \033[0m"
          echo -e "\033[31m DIY_P2_SH:  $DIY_P2_SH  \033[0m"
          echo -e "\033[31m ORTHER:  $ORTHER  \033[0m"
          
          echo "matrix.TARGETS: ${{ matrix.TARGETS }}"
          
      #  1.File Name
          export FILENAME=$SERIALNUM'.0-360T7-'$NAME'-108M'
          export BIN=$SERIALNUM'.0-360T7-'$NAME'-108M-BIN'
          export FACTORY=$SERIALNUM'.0-360T7-'$NAME'-108M-squashfs-factory'
          export SYSUPGRADE=$SERIALNUM'.0-360T7-'$NAME'-108M-squashfs-sysupgrade'
          
          echo "FILENAME=$FILENAME" >> $GITHUB_ENV
          echo "BIN=$BIN" >> $GITHUB_ENV
          echo "FACTORY=$FACTORY" >> $GITHUB_ENV
          echo "SYSUPGRADE=$SYSUPGRADE" >> $GITHUB_ENV
          
          export VanillaFILENAME=$SERIALNUM'.0-360T7-'$NAME
          export VanillaBIN=$SERIALNUM'.0-360T7-'$NAME'-BIN'
          export VanillaFACTORY=$SERIALNUM'.0-360T7-'$NAME'-squashfs-factory'
          export VanillaSYSUPGRADE=$SERIALNUM'.0-360T7-'$NAME'-squashfs-sysupgrade'
          
          echo "VanillaFILENAME=$VanillaFILENAME" >> $GITHUB_ENV
          echo "VanillaBIN=$VanillaBIN" >> $GITHUB_ENV
          echo "VanillaFACTORY=$VanillaFACTORY" >> $GITHUB_ENV
          echo "VanillaSYSUPGRADE=$VanillaSYSUPGRADE" >> $GITHUB_ENV
