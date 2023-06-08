INSTALL		:= sudo apt-get install -y

all: test neovim

prerequisites: 

test: 
	echo "This is my makefile test file."
	
neovim: neovim-default neovim-packer

neovim-default:
	$(INSTALL) neovim
	cp -r ./nvim ~/.config/

neovim-packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

