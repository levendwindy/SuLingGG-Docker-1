#!/bin/bash
###
### Usage:
###   speedpower <input> <output>
###   
### Options:
###   ImmortalWrt | hanwckf | padavanonly         
###   插件
###   ttyd | filetransfer | upnp | openclash | passwall | ssr-plus | vssr | opkg | mtk 
###  
###  
filename=.config

CHANGE(){
	if [ $NAME = "ImmortalWrt" ];then
		sed -i '/# CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock is not set/s/.*/CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock=y/;
            /CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod=y/s/.*/# CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod is not set/;
			/CONFIG_TARGET_PROFILE="DEVICE_qihoo_360-t7-ubootmod"/s/.*/CONFIG_TARGET_PROFILE="DEVICE_qihoo_360-t7-stock"/' .config
			# 或 [ c1 -o c2 ] 、[ c1 ] || [  c2 ]        与 [ c1 -a c2 ]、[ c1 ] && [ c2 ]
	elif [ $NAME = "hanwckf" -o $NAME = "padavanonly" ];then	
		sed -i '/# CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7 is not set/s/.*/CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7=y/;
            /CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M=y/s/.*/# CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M is not set/;
			/CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7-108M"/s/.*/CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7"/' .config
	else
		echo -e "请输如正确作者名： \033[31m	ImmortalWrt/hanwckf/padavanonly	\033[0m"
	fi
}


CHECK(){
	grep "# CONFIG_PACKAGE_luci-app-$PluginNAME is not set" $filename >/dev/null;command1=$?
	grep "CONFIG_PACKAGE_luci-app-$PluginNAME=m"  $filename >/dev/null;command2=$?
	grep "CONFIG_PACKAGE_luci-app-$PluginNAME=y" $filename >/dev/null;command3=$?
}

PLUGIN(){
	CHECK
	if [ $command1 -eq 0 ];then
		sed -i "s/# CONFIG_PACKAGE_luci-app-$PluginNAME is not set/CONFIG_PACKAGE_luci-app-$PluginNAME=y/g" $filename
		echo -e "\033[31m Plugin: $PluginNAME \t\t 未被选中	\033[0m \t>>>\t \033[36m Plugin: $PluginNAME=y \033[0m"
	elif [ $command2 -eq 0 ];then
		echo -e "\033[34m Plugin: $PluginNAME=m \t\t \033[0m \t>>>\t \033[36m Plugin: $PluginNAME=y \033[0m"
		sed -i "s/CONFIG_PACKAGE_luci-app-$PluginNAME=m/CONFIG_PACKAGE_luci-app-$PluginNAME=y/g" $filename && echo -e ""
	elif [ $command3 -eq 0 ];then
			echo -e "\033[32m Plugin: $PluginNAME is selected!	\033[0m"
	else
		echo -e "\033[31m ERROR: $PluginNAME \t\t 未找到	\033[0m"
	fi
}


while [ $# -gt 0 ]             
do
	key="$1"
	case $key in
		-h | --help )
			INPUT=$2
			sed -rn 's/^### ?//;T;p' "$0" && exit 1 ;shift;shift;;
		ImmortalWrt | hanwckf | padavanonly )
			NAME=$1
			CHANGE
			shift;shift;; # 代表移除 2个参数
		ttyd | filetransfer | upnp | openclash | passwall | ssr-plus | vssr \
				| opkg | mtk )
			PluginNAME=$1
		    PLUGIN $1;shift;;
		*)
			echo -e " \033[31m	错误参数: $1 请输如正确参数：\033[0m"
			sed -rn 's/^### ?//;T;p' "$0" 
			exit 1; ;;
	esac
done






