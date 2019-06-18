#!/bin/bash
while true
do

echo "======v1.0====="
echo "1:start"
echo "2:test_1.sh"
echo "3:all.sh"
echo "4:new file"
echo "5:morefile"
echo "6:git push"
echo "7:mysql-->bookhero-->tb_books"

echo "15:reboot"
echo "others:shutdown"
echo "0:exit"
echo "=============="


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

elif [ "$OPTION" = "6" ];then
    echo "git push `pwd`"
    ./use_git.sh

elif [ "$OPTION" = "7" ];then
    echo "mysqsl-->bookhero-->tb_books"
    ./source/my_sql.sh

elif [ "$OPTION" = "15" ];then
    sudo reboot

elif [ "$OPTION" = "0" ];then
    echo "exit!!"
    break

else
    echo "shutdown"
   sudo shutdown -h now
fi


done


