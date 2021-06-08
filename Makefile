install:
	@echo "\e[44mRUNNING INSTALL SCRIPT\e[0m"
	./install.sh
rm:
	@echo "\e[41mremoving downloaded files from your system.\e[0m (may require root)"
	sudo rm /bin/geckodriver