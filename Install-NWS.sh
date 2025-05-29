#!/bin/bash

#Insta
sudo apt update
sudo apt upgrade -y
sudo apt install wine wine-stable winetricks winbind -y

# Create a new wineprefix for this application
WINEPREFIX=${HOME}/JW wineboot

# Add the missing registry key
WINEPREFIX=${HOME}/JW wine reg add 'HKEY_LOCAL_MACHINE\Software\Microsoft\NET Framework Setup\NDP\v4\Full' /v Servicing /t REG_DWORD /d 0x0

# Start the installation
WINEPREFIX=${HOME}/JW winetricks corefonts 
WINEPREFIX=${HOME}/JW wineboot
WINEPREFIX=${HOME}/JW winetricks dotnet48
WINEPREFIX=${HOME}/JW wineboot
WINEPREFIX=${HOME}/JW winetricks d3dx9 d3dcompiler_47
WINEPREFIX=${HOME}/JW wine ~/Téléchargements/NW-Scheduler-Setup_7.8_1401.exe

#Lancer à partir du menu démarer !
