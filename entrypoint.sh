#!/bin/sh
echo "$RELAY_IP:$RELAY_PORT$RELAY_PATH => $HOSTNAME$LOCAL_PATH"
eval "cat <<EOF
$(cat $HOME/icecast.xml.tpl)
" | tee $HOME/icecast.xml
#cat $HOME/icecast.xml
icecast2 -c $HOME/icecast.xml
