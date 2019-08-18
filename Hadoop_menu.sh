#!/usr/bin/bash

while true
do

        echo -e "\033[36m ======v1.0===== \033[0m" 

        echo "1:start-all"
        echo "2:start-dfs"
        echo "3:start-yarn"
        echo "4:stop-all"
        echo "5:stop-dfs"
        echo "6:show date"
        echo "119:shutdown"
        echo "0:edit it"

        echo -e "\033[36m ============== \033[0m" 

        cd ~/bigdata/hadoop/sbin/

        read -p "Please input option:" OPTION


        if [ "$OPTION" = "1" ];then
                    ./start-all.sh
                            echo "start-all"

                        elif [ "$OPTION" = "2" ];then
                                    ./start-dfs.sh

                                elif [ "$OPTION" = "3" ];then
                                            ./start-yarn.sh

                                        elif [ "$OPTION" = "4" ];then
                                                    ./stop-all.sh

                                                elif [ "$OPTION" = "5" ];then
                                                            ./stop-dfs.sh

                                                        elif [ "$OPTION" = "6" ];then
                                                                    echo $(date)

                                                                elif [ "$OPTION" = "0" ];then
                                                                              cd ~
                                                                                  vi Hadoop_menu.sh


                                                                              elif [ "$OPTION" = "119" ];then
                                                                                  
                                           
                                                                                  echo "shutdown"
                                                                                  shutdown -h now


                                                                              else
                                                                                
                                                             
                                                                                   echo 'exit'
                                                                               exit
                                                                               fi
                                                                               

done