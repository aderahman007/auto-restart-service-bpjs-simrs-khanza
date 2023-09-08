#!/bin/bash

########## BASH SCRIPT SHELL BY ADE RAHMAN || ADEOFFICIAL.COM ##########

########## Cara menggunakan crontab ##########
# letakan file script ini pada home/default user directory
########## Buka terminal dan jalankan perintah di bawah ##########
# crontab -e
########## Tambahkan script dibawah ini ###########
########## Dengan asumsi bahwa script dijalankan setiap jam 00:35 ###########
# 35 0 * * * /path/to/file/script.sh >> /tmp/cronjob.log 2>&1

### NOTE : Jika waktu cronjob di ubah sesuaikan juga pada timeout nya di bawah ###


# Path ke folder khanza app
PATH_KHANZA="/home/rsudbm/Unduhan/KhanzaHMSLinux/"

# Nama file jar khanza
APP_NAMES="KhanzaHMSServiceAplicare.jar KhanzaHMSServiceMobileJKN.jar KhanzaHMSServiceMobileJKNERM.jar"

for APP in $APP_NAMES
do
    # Cari pid masing masing service
    PID_APP_NAME=$(lsof -t $PATH_KHANZA$APP)
    # Kill dan mulai ulang
    if [ ! -z "$PID_APP_NAME" ]; then
        kill -9 $PID_APP_NAME
        PID_APP_NAME=$(lsof -t $PATH_KHANZA$APP)
        if [ -z "$PID_APP_NAME" ]; then
            export DISPLAY=:0.0
            gnome-terminal -- bash -c "cd "$PATH_KHANZA" ; timeout 1470m java -jar "$APP
        fi
    else
        export DISPLAY=:0.0
        gnome-terminal -- bash -c "cd "$PATH_KHANZA" ; timeout 1470m java -jar "$APP
    fi
done
