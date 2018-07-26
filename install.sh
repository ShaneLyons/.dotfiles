#!/usr/bin/env zsh

# Get current dir
export CURRENT_DIR
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symlinks

# Vim
if [ -L "$HOME/.vim" ]; then
    rm "$HOME/.vim"
fi
ln -sfv "$CURRENT_DIR/vim" "$HOME/.vim"
ln -sfv "$CURRENT_DIR/vim/vimrc" "$HOME/.vimrc"

# Zsh
ln -sfv "$CURRENT_DIR/zsh/zshrc" "$HOME/.zshrc"

# Tmux
ln -sfv "$CURRENT_DIR/tmux-conf" "$HOME/.tmux.conf"

