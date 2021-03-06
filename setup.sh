#!/bin/zsh

ln -sf /Volumes/500GB ~/

# zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sf ~/Documents/dotfiles/.zshrc ~/.zshrc
touch ~/.hushlogin

# git config
# sign commits
git config --global core.excludesfile ~/.gitignore
ln -sf ~/Documents/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/Documents/dotfiles/.gitignore ~/.gitignore

# fix a vscode bug
codesign --remove-signature /Applications/Visual\ Studio\ Code.app/Contents/Frameworks/Code\ Helper\ \(Renderer\).app

# homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#brew install vim neovim wget llvm tmux starship exa bat dozer golang kubectl kind
#brew install --cask mactex
#brew tap homebrew/cask-fonts
#brew install --cask font-jetbrains-mono docker

# node
#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
#nvm install node

# nvim
# run `:PlugInstall` and `:CocInstall coc-tsserver coc-json coc-html coc-css coc-clangd coc-rust-analyzer coc-python` in nvim
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#python3 -m pip install --user --upgrade pynvim
ln -sf ~/Documents/dotfiles/.vimrc ~/.vimrc
# mkdir ~/.config/nvim
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
