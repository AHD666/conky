#!/bin/bash

killall -9 conky

sleep 3

conky -c ~/conky-manager/.conkyrc & 
conky -c ~/conky-manager/.conkyrc-net &
conky -c ~/conky-manager/.conkyrc-drives &
conky -c ~/conky-manager/.conkyrc-cpu &
conky -c ~/conky-manager/.conkyrc-service &
#conky -c ~/conky-manager/.conkyrc-ram &
