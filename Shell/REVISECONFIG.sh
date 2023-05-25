#!/usr/bin/env bash
###
### Usage:
###   speedpower <input> <output>
###   
### Options:
###   <input>    Input   file to read.          default[ ]
###   <output>   Output  file to write. Use '-' for stdout.
###   -h  --help         help Show this message.                显示帮助
###   -a  --amonut       Show this message.            [40]     下载文件大小
###   -c  --city         Select your server            [gz] sz  服务器节点 默认(gz)广州 
###   -f  --filesize     Assign download file size     [20] Mb  文件大小 默认20(Mb)  <=4095                             
###   -t  --thread       Specify the number of threads [4]      线程数 （4）
###   -o  --other        Northeastern University Server         东北大学节点 其他选择失效
###   -w  --wget         wget ,Default curl download            改用wget测试               
###   -v6 --ipv6         Only support N.U Server                仅支持东北大v6节点  


while [ $# -gt 0 ]             
do
	key="$1"
	case $key in
		-h | --help)
			INPUT=$1
			sed -rn 's/^### ?//;T;p' "$0" && exit 1 ;shift;shift;;
		ImmortalWrt)
			NAME=$1
			shift;shift;;
		hanwckf)
			NAME=$1;shift;shift;;
		padavanonly)
			NAME=$1;shift;shift;;
		*)
			echo "paramter seem error!";echo "Usage: $(basename) $0 [options]"
			exit 1; ;;
	esac
done

CHANGE(){
	if [ $NAME = "ImmortalWrt" ];then
		sed -i '/# CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock is not set/s/.*/CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock=y/;
            /CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod=y/s/.*/# CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod is not set/;
			/CONFIG_TARGET_PROFILE="DEVICE_qihoo_360-t7-ubootmod"/s/.*/CONFIG_TARGET_PROFILE="DEVICE_qihoo_360-t7-stock"/' .config
			# 或 [ c1 -o c2 ] 、[ c1 ] || [  c2 ]        与 [ c1 -a c2 ]、[ c1 ] && [ c2 ]
	elif [ $NAME = "hanwckf" ] || [ $NAME = "padavanonly" ];then	
		sed -i '/# CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7 is not set/s/.*/CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7=y/;
            /CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M=y/s/.*/# CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M is not set/;
			/CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7-108M"/s/.*/CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7"/' .config
	else
		 echo -e "请输如正确作者名： \033[31m	ImmortalWrt/hanwckf/padavanonly	\033[0m"
	fi
}








