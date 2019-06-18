#!/bin/bash
echo "1:start"
echo "2:test_1.sh"
echo "3:all.sh"
echo "4:new file"
echo "5:morefile"

echo "15:reboot"
echo "others:shutdown"

read -p "Please input option:" OPTION

if [ "$OPTION" = "1" ];then
    echo "start"
elif [ "$OPTION" = "2" ];then
    ./test_1.sh
elif [ "$OPTION" = "3" ];then
    ./all.sh
elif [ "$OPTION" = "4" ];then
    cd ~/Desktop/myshell/source/
    touch 1.sh
    chmod +x 1.sh
elif [ "$OPTION" = "5" ];then
    cd ~/Desktop/myshell/source/
read -p "Input filename:" Filename
   # read Filename
    touch $Filename
   chmod +x $Filename
   echo "ok--$Filename"  

elif [ "$OPTION" = "15" ];then
    sudo reboot
else
    echo "shutdown"
   sudo shutdown -h now
fi
exit 0






