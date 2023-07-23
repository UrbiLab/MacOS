#!/bin/bash

current_name=$(scutil --get ComputerName)

if echo "$current_name"  |  grep -q "-" ; then

    new_name=$(echo "$current_name"  |  cut -d "-" -f 1)-"MAC"
fi

sudo scutil --set ComputerName "$new_name"
sudo scutil --set HostName "$new_name"
sudo scutil --set LocalHostName "$new_name"