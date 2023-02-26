#!/usr/bin/env bash
opt1="Subreddit Download"
opt2="User Download"
opt3="User Archive"
opt4="Launch Downloader"
redditmenu=$(zenity  --list  --title "Reddit Tool" --radiolist  --column "" --column "" TRUE "$opt1" FALSE "$opt2" FALSE "$opt3" FALSE "$opt4" --height=400 --width=300)
case $redditmenu in
$opt1 )
url=$(zenity --entry --title "Subreddit Download" --text "Enter Subreddit")
python3 -m bdfr download ~/Documents/Reddit/$url/ --subreddit "$url"
nautilus ~/Documents/Reddit/$url
exit;;
$opt2 )
url=$(zenity --entry --title "User Download" --text "Enter Subreddit")
user=$(zenity --entry --title "User Download" --text "Enter Username")
python3 -m bdfr download ~/Documents/Reddit/$user/ --user $user --subreddit "$url"
nautilus ~/Documents/Reddit/$user
exit;;
$opt3 )
url=$(zenity --entry --title "User Archive" --text "Enter Reddit Username")
mkdir ~/Documents/Reddit/
cd ~/Documents/Reddit/
redditsfinder "$url" | zenity --progress --pulsate --no-cancel --auto-close --title="Redditsfinder" --text="Data being saved"
nautilus ~/Documents/Reddit/users/$url
exit;;
$opt4 )
cd ~/Downloads/Programs/DownloaderForReddit/
python3 main.py
exit;;
esac

