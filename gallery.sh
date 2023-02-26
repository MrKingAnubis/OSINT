#!/usr/bin/env bash
opt1="Gallery-DL"
opt2="RipMe"
gallerymenu=$(zenity  --list  --title "Gallery Tool" --radiolist  --column "" --column "" TRUE "$opt1" FALSE "$opt2" --height=400 --width=300) 
case $gallerymenu in
$opt1 ) 
url=$(zenity --entry --title "Gallery Tool" --text "Enter target URL")
mkdir ~/Documents/gallery-dl
cd ~/Documents/gallery-dl
gallery-dl "$url"
nautilus ~/Documents/gallery-dl/
exit;;
$opt2 )
cd ~/Downloads/
java -jar ripme.jar 
exit;;
esac
