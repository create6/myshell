#!/bin/bash

#commit 变量
read -p "commit what?" OPTION
git add . && git commit -m "$OPTION"  && git push || read -p "your new branch:" BRANCH && git push --set-upstream origin $BRANCH  && echo -e "\033[33m push success! \033[0m \n" 

