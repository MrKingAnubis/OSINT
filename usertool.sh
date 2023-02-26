#!/usr/bin/env bash
opt1="Sherlock"
opt2="SocialScan"
opt3="Holehe"
opt4="WhatsMyName"
opt5="Email2Phone"
opt6="GHunt Email"
opt7="GHunt Doc"
opt8="GHunt YouTube Channel"
opt9="GHunt GAIA"
opt10="GHunt Configuration"
timestamp=$(date +%Y-%m-%d:%H:%M)
usermenu=$(zenity  --list  --title "Username/Email Utilities" --radiolist  --column "" --column "" TRUE "$opt1" FALSE "$opt2"  FALSE "$opt3" FALSE "$opt4" FALSE "$opt5" FALSE "$opt6" FALSE "$opt7" FALSE "$opt8" FALSE "$opt9" FALSE "$opt10" --height=400 --width=300)
case $usermenu in
$opt1 )
handle=$(zenity --entry --title "Sherlock" --text "Enter Username")
cd ~/Downloads/Programs/sherlock/sherlock
echo Working...
python3 sherlock.py $handle > ~/Documents/$handle-Sherlock.txt
xdg-open ~/Documents/$handle-Sherlock.txt
exit;;
$opt2)
handle=$(zenity --entry --title "SocialScan" --text "Enter Username or Email")
socialscan $handle
read -rsp $'Press enter to continue...\n'
exit;;
$opt3)
handle=$(zenity --entry --title "Holehe" --text "Enter Email")
holehe $handle
read -rsp $'Press enter to continue...\n'
exit;;
$opt4)
handle=$(zenity --entry --title "WhatsMyName" --text "Enter Username")
cd ~/Downloads/Programs/WhatsMyName
python3 whats_my_name.py -u $handle > ~/Documents/$handle-WhatsMyName.txt
xdg-open ~/Documents/$handle-WhatsMyName.txt
exit;;
$opt5)
handle=$(zenity --entry --title "Email2Phone" --text "Enter Email")
cd ~/Downloads/Programs/email2phonenumber
python3 email2phonenumber.py scrape -e $handle
read -rsp $'Press enter to continue...\n'
exit;;
$opt6)
handle=$(zenity --entry --title "GHunt Email" --text "Enter Gmail")
cd ~/Downloads/Programs/ghunt
echo Working...
python3 ghunt.py email $handle > ~/Documents/$handle.txt
xdg-open ~/Downloads/Programs/ghunt/profile_pics/
xdg-open ~/Documents/$handle.txt
exit;;
$opt7)
handle=$(zenity --entry --title "GHunt Doc" --text "Enter Google Docs URL")
cd ~/Downloads/Programs/ghunt
echo Working...
python3 ghunt.py doc $handle > ~/Documents/GDoc-$timestamp.txt
xdg-open ~/Downloads/Programs/ghunt/profile_pics/
xdg-open ~/Documents/GDoc-$timestamp.txt
exit;;
$opt8)
handle=$(zenity --entry --title "GHunt YouTube Channel" --text "Enter Channel URL")
cd ~/Downloads/Programs/ghunt
echo Working...
python3 ghunt.py youtube $handle > ~/Documents/Channel-$timestamp.txt
xdg-open ~/Documents/Channel-$timestamp.txt
exit;;
$opt9)
handle=$(zenity --entry --title "GHunt GAIA" --text "Enter GAIA")
cd ~/Downloads/Programs/ghunt
echo Working...
python3 ghunt.py gaia $handle > ~/Documents/$handle.txt
xdg-open ~/Downloads/Programs/ghunt/profile_pics/
xdg-open ~/Documents/$handle.txt
exit;;
$opt10)
cd ~/Downloads/Programs/ghunt
python3 check_and_gen.py
exit;;
esac

