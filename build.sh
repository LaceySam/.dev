#!/bin/bash

# The project should be set up in the home directory
DEV_DIR=$HOME/.dev

/bin/bash $DEV_DIR/scripts/install_go.sh
/bin/bash $DEV_DIR/scripts/setup_tmux.sh
/bin/bash $DEV_DIR/scripts/setup_vim.sh
