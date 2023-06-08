INSTALL		:= sudo apt-get install -y

all: test neovim

prerequisites: 

test: 
	echo "This is my makefile test file."
	
neovim: neovim-default neovim-packer

neovim-default:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	mkdir -p ~/.local/bin/
	mv nvim.appimage ~/.local/bin/nvim

neovim-packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

