
#!/bin/sh
check_status()
{
    path
    file
}
path()
{
#full path to you wallpaper folder example shown below:
find "/home/sid/Images/Wallpapers"
}
file()
{
fullpath=$(path)
prefix="file:///"
gsettings_path="${prefix}${fullpath}"
gsettings set org.gnome.desktop.background picture-uri $gsettings_path
}
while :
do
    check_status
    sleep 0.5 # 1value=1second. Eg: 300 = 5 mins
done
