#!/usr/bin/env bash

RESET="\e[0m"
T_GREEN="\e[32m"
T_RED="\e[31m"
T_LBLUE="\e[36m"
B_GREEN="\e[42m"

gecko_filename="gecko_tar"
tag="0.29.1" # update this when new version is available

echo -e "${T_LBLUE}Downloading gecko driver v${tag}-linux64... ${RESET}"
wget -q -O $gecko_filename "https://github.com/mozilla/geckodriver/releases/download/v${tag}/geckodriver-v${tag}-linux64.tar.gz"
# check if success
echo -e "${T_GREEN}Successfully downloaded gecko zipped file. ${RESET}\n"

echo -e "${T_LBLUE}Listing files...${RESET}"
ls -l --color=auto
echo

echo -e "${T_LBLUE}Unzipping $gecko_filename...${RESET}"
tar -xvf $gecko_filename
# check if success

echo -e "\n${T_RED}Moving downloaded gecko to /bin dir (may require superuser permissions).${RESET}"
sudo mv ./geckodriver /bin
# check if success

# show files that are being removed
echo -e "\n${T_LBLUE}Cleaning up files...${RESET}"
rm $gecko_filename

echo -e "\e[42mSUCCESS${RESET}"
