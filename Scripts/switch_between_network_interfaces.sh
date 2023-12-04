#!/bin/bash

# Set names for my interfaces
WIFI_INTERFACE="wlan0"
ETHERNET_INTERFACE="enp16s0"

# Activate Ethernet
switch_to_ethernet(){
	echo "Switching to Ethernet..."
	sudo ip link set dev "$WIFI_INTERFACE" down
	echo "WiFi DOWN"
	sudo ip link set dev "$ETHERNET_INTERFACE" up
	echo "ETHERNET UP"
	echo "-----DONE-----"
}

# Activate WiFi
switch_to_wifi(){
	echo "Switching to WiFi..."
	sudo ip link set dev "$ETHERNET_INTERFACE" down
	echo "ETHERNET DOWN"
	sudo ip link set dev "$WIFI_INTERFACE" up
	echo "WIFI UP"
	echo "-----DONE-----"
}

# Check the current status of connection interfaces
get_current_connection_type(){
	if ip link show dev "$ETHERNET_INTERFACE" | grep -q "state UP"; then
		if ip link show dev $WIFI_INTERFACE | grep -q "state UP"; then
			echo "BOTH"
		else
			echo "ETHERNET"
		fi
	elif ip link show dev $WIFI_INTERFACE | grep -q "state UP"; then
		echo "WIFI"
	else
		echo "NOTHING"
	fi
}

# Main function
case $1 in 
info)	
	current_type=$(get_current_connection_type)
	echo "Current connection type: $current_type"
	;;
switch)
	current_type=$(get_current_connection_type)
	echo "Current interface: $(get_current_connection_type)"

	if [ "$current_type" == "BOTH" ]; then
		switch_to_ethernet
	elif [ "$current_type" == "ETHERNET" ]; then
		switch_to_wifi
	elif [ "$current_type" == "WIFI" ]; then
		switch_to_ethernet
	else
		switch_to_ethernet
	fi
	;;
*)
	# Invalid argument
	echo "Usage: connection [info|switch]"
	exit 1
	;;
esac

exit 0

# .bashrc: 
# alias connection="$HOME/Scripts/switch_between_network_interfaces.sh
# export PATH="$PATH:$HOME/Scripts
#
# USEFUL INFO: ip route show default | awk '{print $5}'    -prints out active interfaces

