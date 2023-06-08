INSTALL		:= sudo apt-get install -y

all: test neovim

prerequisites: 

test: 
	echo "This is my makefile test file."
	
neovim: neovim-default neovim-packer neovim-dotfiles

neovim-pre:
	${INSTALL} ninja-build gettext cmake unzip curl

neovim-default:
	git clone https://github.com/neovim/neovim
	cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
	cd neovim && sudo make install

neovim-packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

neovim-dotfiles:
	mkdir -p ~/.config/nvim
	cp -r ./nvim/* ~/.config/nvim/*
