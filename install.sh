#!/usr/bin/env bash
gecko_filename="gecko_tar"
tag="0.29.1" # update this when new version is available

echo -e "\e[36mDownloading gecko driver v${tag}-linux64...\e[0m"
wget -q -O $gecko_filename "https://github.com/mozilla/geckodriver/releases/download/v${tag}/geckodriver-v${tag}-linux64.tar.gz"
# check if success
echo -e "\e[32mSuccessfully downloaded gecko zipped file.\e[0m\n"

echo -e "\e[36mListing files...\e[0m"
ls -c1 -l --color=auto
echo

echo -e "\e[36mUnzipping $gecko_filename...\e[0m"
tar -xvf $gecko_filename
# check if success

echo -e "\n\e[31mMoving downloaded gecko to /bin dir (may require superuser permissions).\e[0m"
sudo mv ./geckodriver /bin
# check if success

# show files that are being removed
echo -e "\n\e[36mCleaning up files...\e[0m"
rm $gecko_filename

echo -e "\e[42mSUCCESS\e[0m"
