#!/usr/bin/env bash
opt1="YTDL-Best Quality"
opt2="YTDL-Maximum 720p"
opt3="YTDLP-Best Quality"
opt4="YTDLP-Maximum 720p"
opt5="Export YT Comments"
opt6="Export YT Subtitles"
opt7="Export YT Metadata"
timestamp=$(date +%Y-%m-%d_%H_%M)
videodownloadmenu=$(zenity  --list  --title "Video Downloader" --radiolist  --column "" --column "" TRUE "$opt1" FALSE "$opt2" FALSE "$opt3" FALSE "$opt4" FALSE "$opt5" FALSE "$opt6" FALSE "$opt7" --height=400 --width=300)
case $videodownloadmenu in
$opt1 )
url=$(zenity --entry --title "Best Quality" --text "Enter target URL")
youtube-dl "$url" -o ~/Videos/"$timestamp%(title)s.%(ext)s" -i --all-subs
nautilus ~/Videos/
exit;;
$opt2 )
url=$(zenity --entry --title "Maximum 720p" --text "Enter target URL")
youtube-dl "$url" -o ~/Videos/"$timestamp%(title)s.%(ext)s" -i -f 'bestvideo[height<=720]+bestaudio' --all-subs 
nautilus ~/Videos/
exit;;
$opt3 )
url=$(zenity --entry --title "Best Quality" --text "Enter target URL")
yt-dlp "$url" -o ~/Videos/"$timestamp%(title)s.%(ext)s" -i --all-subs 
nautilus ~/Videos/
exit;;
$opt4 )
url=$(zenity --entry --title "Maximum 720p" --text "Enter target URL")
yt-dlp "$url" -o ~/Videos/Youtube-DL/"$timestamp%(title)s.%(ext)s" -i -f 'bestvideo[height<=720]+bestaudio' --all-subs
nautilus ~/Videos/
exit;;
$opt5 )
url=$(zenity --entry --title "Export YT Comments" --text "Enter Video ID")
echo "This may take some time..."
yt-dlp --skip-download https://www.youtube.com/watch?v=$url --write-comments -o ~/Videos/$url-comments 
nautilus ~/Videos/
exit;;
$opt6 )
url=$(zenity --entry --title "Export YT Subtitles" --text "Enter Video ID")
youtube-dl --all-subs --skip-download https://www.youtube.com/watch?v=$url -o ~/Videos/$url 
nautilus ~/Videos/
exit;;
$opt7 )
url=$(zenity --entry --title "Export YT Metadata" --text "Enter Video ID")
echo "This may take some time..."
yt-dlp --skip-download https://www.youtube.com/watch?v=$url --write-info-json -o ~/Videos/$url-info.txt 
nautilus ~/Videos/
exit;; 
esac


