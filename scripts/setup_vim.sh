echo "\n\n\n"
echo "Setting up Vim"

# Setup vim symbolic links
ln -s $DEV_DIR/vim/.vimrc $HOME/.
ln -s $DEV_DIR/vim/.vim $HOME/.vim

# Load in pathogen vim modules
git submodule init
git submodule update
