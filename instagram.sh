#!/usr/bin/env bash
opt1="Instalooter (Without Login)"
opt2="Instaloader (Without Login)"
opt3="Instalooter (With Login)"
opt4="Instaloader (With Login)"
opt5="Toutatis"
opt6="OsintGram Photos"
opt7="OsintGram Stories"
opt8="OsintGram Comments"
opt9="OsintGram Captions"
opt10="OsintGram Followers"
opt11="OsintGram Followers Emails"
opt12="OsintGram Followers Numbers"
opt13="OsintGram Following"
opt14="OsintGram Following Emails"
opt15="OsintGram Following Numbers"
opt16="OSINTGram Info"
opt17="Add Instagram Credentials"
socialmenu=$(zenity  --list  --title "Instagram Utilities" --radiolist  --column "" --column "" TRUE "$opt1" FALSE "$opt2"  FALSE "$opt3" FALSE "$opt4" FALSE "$opt5" FALSE "$opt6" FALSE "$opt7" FALSE "$opt8" FALSE "$opt9" FALSE "$opt10" FALSE "$opt11" FALSE "$opt12" FALSE "$opt13" FALSE "$opt14" FALSE "$opt15" FALSE "$opt16" FALSE "$opt17" --height=600 --width=300)
case $socialmenu in
$opt1 )
handle=$(zenity --entry --title "Instalooter" --text "Enter TARGET Instagram User ID")
mkdir ~/Documents/instalooter/$handle/
instalooter user $handle ~/Documents/instalooter/$handle/ -v -m -d -e | zenity --progress --pulsate --no-cancel --auto-close --title="Instalooter" --text="Downloading images from $handle"
nautilus ~/Documents/instalooter/$handle/
exit;;
$opt2)
mkdir ~/Documents/instaloader
cd ~/Documents/instaloader
handle=$(zenity --entry --title "Instaloader" --text "Enter TARGET Instagram User ID")
instaloader $handle
nautilus ~/Documents/instaloader/$handle/
exit;;
$opt3)
username=$(zenity --entry --title "Credentials" --text "Enter YOUR Instagram Username")
pass=$(zenity --entry --title "Credentials" --text "Enter YOUR Instagram Password")
handle=$(zenity --entry --title "Instalooter" --text "Enter TARGET Instagram User ID")
mkdir ~/Documents/instalooter/$handle/
instalooter logout
instalooter login -u $username -p $pass
instalooter user $handle ~/Documents/instalooter/$handle/ -v -m -d -e | zenity --progress --pulsate --no-cancel --auto-close --title="Instalooter" --text="Downloading images from $handle"
nautilus ~/Documents/instalooter/$handle/
exit;;
$opt4)
username=$(zenity --entry --title "Credentials" --text "Enter YOUR Instagram Username")
pass=$(zenity --entry --title "Credentials" --text "Enter YOUR Instagram Password")
handle=$(zenity --entry --title "Instaloader" --text "Enter TARGET Instagram User ID")
instaloader --login $username --password $pass $handle
nautilus ~/Documents/instaloader/$handle/
exit;;
$opt5)
handle=$(zenity --entry --title "Toutatis" --text "Enter TARGET Instagram User ID")
session=$(zenity --entry --title "Session" --text "Enter YOUR Session ID")
toutatis -u $handle -s $session
read -rsp $'Press enter to continue...\n'
exit;;
$opt6)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py $handle -c photos -o ~/Documents/OSINTGram/$handle/Photos/
nautilus ~/Documents/OSINTGram/$handle/Photos/
exit;;
$opt7)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c stories -f $handle -o ~/Documents/OSINTGram/$handle/stories/
nautilus ~/Documents/OSINTGram/$handle/stories/
exit;;
$opt8)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c comments -f $handle > ~/Documents/OSINTGram/$handle/comments.txt
xdg-open ~/Documents/OSINTGram/$handle/comments.txt
exit;;
$opt9)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c captions -f $handle > ~/Documents/OSINTGram/$handle/captions.txt
xdg-open ~/Documents/OSINTGram/$handle/captions.txt
exit;;
$opt10)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c followers -f $handle > ~/Documents/OSINTGram/$handle/followers.txt
xdg-open ~/Documents/OSINTGram/$handle/followers.txt
exit;;
$opt11)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c fwersemail -f $handle > ~/Documents/OSINTGram/$handle/followersemails.txt
xdg-open ~/Documents/OSINTGram/$handle/followersemails.txt
exit;;
$opt12)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c fwersnumber -f $handle > ~/Documents/OSINTGram/$handle/followersnumbers.txt
xdg-open ~/Documents/OSINTGram/$handle/followersnumbers.txt
exit;;
$opt13)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c followings -f $handle > ~/Documents/OSINTGram/$handle/following.txt
xdg-open ~/Documents/OSINTGram/$handle/following.txt
exit;;
$opt14)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c fwingsemail -f $handle > ~/Documents/OSINTGram/$handle/followingemails.txt
xdg-open ~/Documents/OSINTGram/$handle/followingemails.txt
exit;;
$opt15)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c fwingsnumber -f $handle > ~/Documents/OSINTGram/$handle/followingnumbers.txt
xdg-open ~/Documents/OSINTGram/$handle/followinfnumbers.txt
exit;;
$opt16)
handle=$(zenity --entry --title "OSINTGram" --text "Enter TARGET Instagram User ID")
cd ~/Downloads/Programs/Osintgram/
mkdir ~/Documents/OSINTGram/$handle/
clear
python3 main.py -c info -f $handle > ~/Documents/OSINTGram/$handle/info.txt
xdg-open ~/Documents/OSINTGram/$handle/info.txt
exit;;
$opt17)
cd ~/Downloads/Programs/Osintgram/
make setup
exit;;
esac

