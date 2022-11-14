#!/bin/bash



# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White


read -p "Enter the commit message: " msg
read -p "Enter the commit description: " desc
branch="main"

echo -e "\n"
if [ -z "$desc" ]
then
    echo -e "Pushing to branch ${Blue}${branch}${Color_Off} with message: ${Black}${On_White}${msg}${Color_Off}"
else
    echo -e "Pushing to branch ${Blue}${branch}${Color_Off} with message: ${Black}${On_White}${msg}${Color_Off} and description: ${Black}${On_White}${desc}${Color_Off}"
fi

echo -e "\n"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
git add -A
git commit -m "${msg}" -m "${desc}"
git push origin "${branch}"