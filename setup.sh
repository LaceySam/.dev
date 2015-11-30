# The project should be set up in the home directory
# Setup vim symbolic links

PROJECT_DIR=$HOME/.dev

ln -s $PROJECT_DIR/vim/.vimrc ~/.
ln -s $PROJECT_DIR/vim/.vim ~/.vim

# Load in pathogen vim modules
git submodule init
git submodule update
