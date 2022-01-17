#!/bin/bash
set -x

#Create a txt fille list of all homebridge plugins
pushd /usr
push/lib/node_modules
PLUGIN_LIST="/home/homebridge/hb-plugins"

#Create a txt fille list of all homebridge plugins
ls -ld homebridge* | awk '{print $9}' > /home/homebridge/hb-plugins

#Update the plugins on the list
while IFS= read -r plugin;do
  sudo -E -n npm install -g $plugin@latest;
done < $PLUGIN_LIST

#restart the hb service
hb-service restart

#Cleanup
#rm -f /home/homebridge/hb-plugins
