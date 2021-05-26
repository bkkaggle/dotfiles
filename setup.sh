#!/bin/zsh

ln -sf /Volumes/500GB ~/

# zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sf ~/Documents/dotfiles/.zshrc ~/.zshrc
touch ~/.hushlogin

# git config
git config --global core.excludesfile ~/.gitignore
ln -sf ~/Documents/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/Documents/dotfiles/.gitignore ~/.gitignore

# fix a vscode bug
codesign --remove-signature /Applications/Visual\ Studio\ Code.app/Contents/Frameworks/Code\ Helper\ \(Renderer\).app

# homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew install vim neovim wget llvm tmux starship exa bat dozer
#brew install --cask mactex

# node
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
#nvm install node

# nvim
# run `:PlugInstall` and `:CocInstall coc-tsserver coc-json coc-html coc-css coc-clangd coc-rust-analyzer coc-python` in nvim
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf ~/Documents/dotfiles/.vimrc ~/.vimrc
ln -sf ~/Documents/dotfiles/init.vim ~/.config/nvim/init.vim

# conda
# `conda create -n py38 python=3.8`
# `pip3 install numpy tqdm matplotlib opencv-python Pillow wandb jax jaxlib git+https://github.com/google/flax.git tensorflow_datasets tensorflow torch torchvision ptvsd`
#wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh

# rust
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# prettier
ln -sf ~/Documents/dotfiles/.prettierrc ~/.prettierrc

# starship
ln -sf ~/Documents/dotfiles/starship.toml ~/.config/starship.toml

# vscode
ln -sf ~/Documents/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/Documents/dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
