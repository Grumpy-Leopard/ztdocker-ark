#!/bin/bash

./steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/ark +app_update 376030 validate +quit
/home/steam/ark/ShooterGame/Binaries/Linux/ShooterGameServer TheIsland?listen?Multihome=0.0.0.0?SessionName=$SESSIONNAME?MaxPlayers=$MAXPLAYERS?QueryPort=$QUERYPORT?RCONPort=$RCONPORT?Port=$PORT?ServerAdminPassword=$SERVERADMINPASSWORD -server -log