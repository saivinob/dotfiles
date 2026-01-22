#!/bin/sh

DISPLAY=:0 feh --no-fehbg --bg-scale --randomize --recursive \
    /usr/share/backgrounds/

# Note: Cron job (or systemd service/timer) does NOT work without 
# DISPLAY=:0

# A sample crontab entry: runs the script every 10m.
# m h dom mon dow command
#*/10 * * * * /bin/sh ~/.local/bin/wallpaper_changer.sh
