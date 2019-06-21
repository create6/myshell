#!/bin/bash
while true
do


echo -e "\033[36m ======v1.0===== \033[0m" 

echo "1:start"
echo "2:test_1.sh"
echo "3:get_bookpro"
echo "4:show date"
echo "5:morefile"
echo "6:git myshell"
echo "7:mysql-->bookhero"
echo "8:sendmail"
echo "15:reboot"
echo "112:shutdown"
echo "99:edit it"
echo "0:exit"


echo -e "\033[36m ============== \033[0m" 

cd ~/Desktop/myshell
read -p "Please input option:" OPTION


if [ "$OPTION" = "1" ];then
    echo "start"

elif [ "$OPTION" = "2" ];then
    ./test_1.sh

elif [ "$OPTION" = "3" ];then
    cd ~/Desktop/bookpro/
    ./use_git.sh

elif [ "$OPTION" = "4" ];then
	echo $(date)

elif [ "$OPTION" = "5" ];then
    cd ~/Desktop/myshell/
read -p "Input filename:" Filename
   # read Filename
    touch $Filename
   chmod +x $Filename
   echo "ok--$Filename"  

elif [ "$OPTION" = "6" ];then
echo -e "\033[36m  git push `pwd` \033[0m" 
    ~/Desktop/myshell/use_git.sh

elif [ "$OPTION" = "7" ];then
    echo "mysqsl-->bookhero-->tb_books"
    ~/Desktop/myshell/source/my_sql.sh

elif [ "$OPTION" = "8" ];then
    read -p 'Please input content:' CONTENT
    echo -e "\033[33m sendmail \033[0m" 
    ./source/sendEmail_1.py $CONTENT

elif [ "$OPTION" = "15" ];then
    sudo reboot
elif [ "$OPTION" = "99" ];then

    vi ./test_menu.sh
elif [ "$OPTION" = "0" ];then
echo -e "\033[47;30m  exit \033[0m" 
    break

elif [ "$OPTION" = "112" ];then
    
  cd ~/Desktop/myshell
  ./all.sh
  ./use_git.sh
    echo "shutdown"
    sudo shutdown -h now

else
  
 #  sudo shutdown -h now
    echo '=='
fi


done


