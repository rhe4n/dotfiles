#!/bin/sh

#ICON="嬨"

LABEL="VPN: "
CONNNAME=$(pgrep -a openvpn$ | head -n 1 | awk '{print $NF }' | cut -d '.' -f 1)
ICON="嬨"
COLOR="#a9dd96"
CONNECT="nimbus_connect"
DISCONNECT="nimbus_disconnect"

if [[ -n $CONNNAME ]]; then
	printf '%s\n' "%{u"$COLOR"}%{+u}%{F"$COLOR"}"$ICON"%{F-}  "$CONNNAME"%{u-}"
else
	printf '%s\n' $ICON"  down"
fi
