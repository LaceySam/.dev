printf "\n"
printf "Setting up Vim"
printf "\n"

# The project should be set up in the home directory
DEV_DIR=$HOME/.dev

# Setup vim symbolic links
ln -s $DEV_DIR/vim/.vimrc $HOME/.
ln -s $DEV_DIR/vim/.vim $HOME/.vim

cd /tmp/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
unzip Hack.zip
mv *ttf ~/.local/share/fonts
cd -
fc-cache -fv
