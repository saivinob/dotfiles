#!/bin/sh
#xcompmgr &

# without running a wallpaper setter, either fehbg or my custom script,
# wallpaper is not set till the related cron job/systemd-timer is triggered
#~/.fehbg
~/.local/bin/wallpaper_changer.sh

#fallback if needed, I tend to forget the commands :)
#xsetroot -solid steelblue
