#!/bin/bash

./steamcmd.sh +login anonymous +force_install_dir /ark +app_update 376030 validate +quit
./ark/ShooterGame/Binaries/Linux/ShooterGameServer TheIsland?listen?Multihome=0.0.0.0?SessionName=$SESSIONNAME?MaxPlayers=$MAXPLAYERS?QueryPort=$QUERYPORT?RCONPort=$RCONPORT?Port=$PORT?ServerAdminPassword=$SERVERADMINPASSWORD -server -log