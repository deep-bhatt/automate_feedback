install:
	@echo "\e[44mINSTALLING PYTHON DEPENDENCIES\e[0m"
	pip3 install -r ./requirements.txt
	@echo "\e[44mRUNNING INSTALL SCRIPT\e[0m"
	./install.sh
rm:
	@echo "\e[41mremoving downloaded files from your system.\e[0m (may require root)"
	sudo rm /bin/geckodriver