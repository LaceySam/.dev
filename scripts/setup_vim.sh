printf "\n"
printf "Setting up Vim"
printf "\n"

# The project should be set up in the home directory
DEV_DIR=$HOME/.dev

# Setup vim symbolic links
ln -s $DEV_DIR/vim/.vimrc $HOME/.
ln -s $DEV_DIR/vim/.vim $HOME/.vim

# Load in pathogen vim modules
git submodule init
git submodule update
