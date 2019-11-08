printf "\n"
printf "Setting up tmux"
printf "\n"

# The project should be set up in the home directory
DEV_DIR=$HOME/.dev

# Setup tmux symbolic links
ln -s $DEV_DIR/tmux/.tmux.conf $HOME/.
