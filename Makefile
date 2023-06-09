INSTALL		:= sudo apt-get install -y

all: test neovim

prerequisites: 

test: 
	echo "This is my makefile test file."
	

neovim: pre neovim-default neovim-packer neovim-dotfiles

pre:
	echo "Neovim prerequisites"
	${INSTALL} ninja-build gettext cmake unzip curl
	echo "LaTeX prerequisites"
	# ${INSTALL} vimtex zathura

neovim-default:
	git clone https://github.com/neovim/neovim
	cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
	cd neovim && sudo make install

neovim-packer:
	git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

latex:
	$(info ************  Installing LaTeX ************)
	${INSTALL} texlive-full zathura
	cargo install texlab

dot:
	$(info ************  Installing SCRIPTS ************)
	mkdir ~/scripts/ 
	cp -r ./dotfiles/scripts/* ~/scripts/
	cp ./dotfiles/.bashrc ~/.bashrc
	$(info ************  Installing TMUX ************)
	${INSTALL} tmux
	sudo gem install tmuxinator
	cp ./dotfiles/.tmux.conf ~/.tmux.conf
	$(info ************  Installing Neovim ************)
	mkdir -p ~/.config/nvim 
	cp -r ./dotfiles/nvim/* ~/.config/nvim/
