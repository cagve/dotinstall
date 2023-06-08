INSTALL		:= apt-get install 

all: test neovim

prerequisites: 

test: 
	echo "This is my makefile test file."
	
neovim: 
	echo "This is neovim"
	$(INSTALL) neovim
	cp -r ./nvim ~/.config/
