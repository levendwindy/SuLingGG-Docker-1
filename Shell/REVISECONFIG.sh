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
rm -rf  /tmp/tmp.log
touch /tmp/tmp.log
CHANGE(){
	if [ $NAME = "ImmortalWrt" ];then
		sed -i '/# CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock is not set/s/.*/CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock=y/;
            		/CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod=y/s/.*/# CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod is not set/;
			/CONFIG_TARGET_PROFILE="DEVICE_qihoo_360-t7-ubootmod"/s/.*/CONFIG_TARGET_PROFILE="DEVICE_qihoo_360-t7-stock"/' .config && \
				echo -e "\033[31m 360-t7-stock is not set \t \033[0m \t >>> \t \033[36m 360-t7-stock=y \033[0m" \
				echo -e "\033[31m 360-t7-ubootmod=y \t \033[0m \t >>> \t \033[36m 360-t7-ubootmod is not set \033[0m" \
				echo -e '\033[31m "DEVICE_qihoo_360-t7-ubootmod" \t \033[0m \t >>> \t \033[36m "DEVICE_qihoo_360-t7-stock" \033[0m' || \
					echo -e "\033[31m 360-t7-stock is not set \t \033[0m \t >>> \t \033[31m 替换失败 \033[0m" \
					echo -e "\033[31m 360-t7-ubootmod=y \t \033[0m \t >>> \t \033[31m 替换失败 \033[0m" \
					echo -e '\033[31m "DEVICE_qihoo_360-t7-ubootmod" \t \033[0m \t >>> \t \033[31m 替换失败 \033[0m'
		grep 'CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-stock' $filename >> /tmp/tmp.log
		grep 'CONFIG_TARGET_mediatek_filogic_DEVICE_qihoo_360-t7-ubootmod' $filename >> /tmp/tmp.log
		grep 'CONFIG_TARGET_PROFILE=' $filename >> /tmp/tmp.log
# 或 [ c1 -o c2 ] 、[ c1 ] || [  c2 ]        与 [ c1 -a c2 ]、[ c1 ] && [ c2 ]
	elif [ $NAME = "hanwckf" -o $NAME = "padavanonly" ];then
		sed -i '/# CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7 is not set/s/.*/CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7=y/;
            		/CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M=y/s/.*/# CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M is not set/;
			/CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7-108M"/s/.*/CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7"/' .config && \
				echo -e "\033[31m 360-t7 is not set \t \033[0m \t >>> \t \033[36m 360-t7=y \033[0m" \
				echo -e "\033[31m 360-t7-108M=y \t \033[0m \t >>> \t \033[36m 360-t7-108M is not set \033[0m" \
				echo -e '\033[31m "DEVICE_mt7981-360-t7-108M" \t \033[0m \t >>> \t \033[36m "DEVICE_mt7981-360-t7" \033[0m'  || \
					echo -e "\033[31m 360-t7 is not set \t \033[0m \t >>> \t \033[31m 替换失败 \033[0m" \
					echo -e "\033[31m 360-t7-108M=y \t \033[0m \t >>> \t \033[31m 替换失败 \033[0m" \
					echo -e '\033[31m "DEVICE_mt7981-360-t7-108M" \t \033[0m \t >>> \t \033[31m 替换失败 \033[0m'
			
		grep 'CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7' $filename >> /tmp/tmp.log
		grep 'CONFIG_TARGET_mediatek_mt7981_DEVICE_mt7981-360-t7-108M' $filename >> /tmp/tmp.log
		grep 'CONFIG_TARGET_PROFILE="DEVICE_mt7981-360-t7-108M' $filename >> /tmp/tmp.log
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
		sed -i "s/# CONFIG_PACKAGE_luci-app-$PluginNAME is not set/CONFIG_PACKAGE_luci-app-$PluginNAME=y/g" $filename && \
			echo -e "\033[31m Plugin: $PluginNAME \t\t 未被选中	\033[0m \t>>>\t \033[36m Plugin: $PluginNAME=y \033[0m" || \
			echo -e "\033[31m Plugin: $PluginNAME \t\t 未被选中	\033[0m \t>>>\t \033[31m 替换失败 \033[0m"
	elif [ $command2 -eq 0 ];then
		echo -e "\033[34m Plugin: $PluginNAME=m \t\t \033[0m \t>>>\t \033[36m Plugin: $PluginNAME=y \033[0m" && \
			sed -i "s/CONFIG_PACKAGE_luci-app-$PluginNAME=m/CONFIG_PACKAGE_luci-app-$PluginNAME=y/g" $filename  || \
			echo -e "\033[31m Plugin: $PluginNAME \t\t 未被选中	\033[0m \t>>>\t \033[31m 替换失败 \033[0m"
	elif [ $command3 -eq 0 ];then
			echo -e "\033[32m Plugin: $PluginNAME is selected!	\033[0m"
	else
		echo -e "\033[31m ERROR: $PluginNAME \t\t 未找到	\033[0m"
	fi
	grep "CONFIG_PACKAGE_luci-app-$PluginNAME=y" $filename >> /tmp/tmp.log
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
			shift;; # shift;shift;;代表移除 2个参数 
		# APP
		accesscontrol | acme | adblock | adbyby-fix | adbyby-plus | advanced-reboot | advancedsetting | ahcp | airplay2 | airwhu | aliddns | amule | appfilter | \
				argon-config | aria2 | arpbind | asterisk | attendedsysupgrade | autoreboot | baidupcs-web | bcp38 | beardropper | bird1-ipv4 | bird1-ipv6 | bmx6 | brook-server | \
				cd8021x | cifs | cifs-mount | cjdns | clamav | commands | cpufreq | cpulimit | cshark | cupsd | dawn | ddns | diag-core | diskman | diskman_INCLUDE_mdadm | dnscrypt-proxy | \
				dnsforwarder | docker | dump1090 | dynapoint | eqos | fileassistant | filebrowser | filetransfer | frpc | frps | fwknopd | gost | gowebdav | guest-wifi | haproxy-tcp | \
				hd-idle | hnet | https-dns-proxy | https_dns_proxy | ipsec-vpnd | ipsec-vpnserver-manyusers | iptvhelper | kcptun | kodexplorer | ksmbd | lxc | mentohust | minidlna | \
				minieap | mjpg-streamer | music-remote-center | mwan3 | mwan3helper | mwol | n2n_v2 | naiveproxy | netdata | nfs | nft-qos | nginx-pingos | ngrokc | njitclient | nlbwmon | \
				nps | ntpc | ocserv | oled | olsr | olsr-services | olsr-viz | olsrd2 | onliner | openclash | openvpn | openvpn-server | oscam | p910nd | pagekitec | passwall_Nftables_Transparent_Proxy | \
				passwall_INCLUDE_Hysteria | passwall_INCLUDE_NaiveProxy | passwall_INCLUDE_Trojan_GO | polipo | pppoe-relay | pppoe-server | privoxy | ps3netsrv | qbittorrent | qos | \
				radicale | ramfree | rclone | rp-pppoe-server | samba | samba4 | scutclient | serverchan | shadowsocks-libev | shairplay | siitwizard | simple-adblock | smartdns | smartinfo | \
				smstool | socat | softethervpn | softethervpn5 | speederv2 | splash | sqm | squid | ssocks | ssr-libev-server | ssr-mudb-server | ssr-plus | ssr-plus_INCLUDE_Shadowsocks_NONE_Client | \
				ssr-plus_INCLUDE_Shadowsocks_Libev_Client | ssr-plus_INCLUDE_Shadowsocks_NONE_Server | ssr-plus_INCLUDE_Shadowsocks_Libev_Server | ssr-plus_INCLUDE_NONE_V2RAY | ssr-plus_INCLUDE_V2ray | \
				ssr-plus_INCLUDE_SagerNet_Core | ssr-plus_INCLUDE_Hysteria | ssr-plus_INCLUDE_NaiveProxy | ssr-plus_INCLUDE_Redsocks2 | ssrserver-python | statistics | syncdial | syncthing | sysuh3c | \
				timecontrol | timewol | tinyproxy | transmission | travelmate | trojan-server | ttyd | turboacc-mtk_INCLUDE_DNSFORWARDER | turboacc-mtk_INCLUDE_DNSPROXY | udp2raw | udpxy | uhttpd | \
				unblockmusic | unblockneteasemusic-go | unbound | usb-printer | usb3disable | uugamebooster | v2ray-server | verysync | vlmcsd | vnstat | vpn-policy-routing | vpnbypass | vsftpd | \
				vssr_INCLUDE_Hysteria | watchcat | webadmin | webrestriction | weburl | wifischedule | wireguard | wol | wrtbwmon | xlnetacc | zerotier | \
				passwall_INCLUDE_Shadowsocks_Libev_Client | passwall_INCLUDE_Shadowsocks_Libev_Server | passwall_INCLUDE_Shadowsocks_Rust_Client | passwall_INCLUDE_Shadowsocks_Rust_Server | \
				passwall_INCLUDE_ShadowsocksR_Libev_Client | passwall_INCLUDE_ShadowsocksR_Libev_Server | passwall_INCLUDE_Simple_Obfs | passwall_INCLUDE_Trojan_Plus | passwall_INCLUDE_V2ray | \
				passwall_INCLUDE_V2ray_Plugin | passwall_INCLUDE_Xray | passwall_INCLUDE_Xray_Plugin | rclone_INCLUDE_rclone-webui | rclone_INCLUDE_rclone-ng | ssr-plus_INCLUDE_Shadowsocks_Rust_Client | \
				ssr-plus_INCLUDE_Shadowsocks_Rust_Server | ssr-plus_INCLUDE_Xray | ssr-plus_INCLUDE_ChinaDNS_NG | ssr-plus_INCLUDE_IPT2Socks | ssr-plus_INCLUDE_Kcptun | \
				ssr-plus_INCLUDE_Shadowsocks_Simple_Obfs | ssr-plus_INCLUDE_Shadowsocks_V2ray_Plugin | ssr-plus_INCLUDE_ShadowsocksR_Libev_Client | ssr-plus_INCLUDE_ShadowsocksR_Libev_Server | \
				ssr-plus_INCLUDE_Trojan | turboacc | turboacc-mtk | turboacc-mtk_INCLUDE_OFFLOADING | turboacc-mtk_INCLUDE_BBR_CCA | turboacc-mtk_INCLUDE_PDNSD | upnp | vssr | vssr_INCLUDE_Kcptun | \
				vssr_INCLUDE_ShadowsocksR_Libev_Server | vssr_INCLUDE_Trojan | vssr_INCLUDE_Xray | vssr_INCLUDE_Xray_plugin )
			PluginNAME=$1
		   	PLUGIN $1;shift;;
		*)
			echo -e " \033[31m	错误参数: $1 请输如正确参数：\033[0m"
			sed -rn 's/^### ?//;T;p' "$0" 
			exit 1; ;;
	esac
done

cat /tmp/tmp.log




