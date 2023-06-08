INSTALL		:= sudo apt-get install 

all: test neovim

prerequisites: 
	$(INSTALL) git
	$(INSTALL) ninja-build
	$(INSTALL) curl

test: 
	echo "This is my makefile test file."
	
neovim: 
	echo "This is neovim"
