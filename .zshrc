export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme name
#ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git docker fzf fzf-tab colored-man-pages command-not-found sudo)

# User configuration

# aliases
alias upgrade="sudo apt-get update && sudo apt-get upgrade"
alias gpl="git fetch -p; git pull"

source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

# nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# yarn configuration
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# cargo configuration
export PATH="$HOME/.cargo/bin:$PATH"

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export FPATH="$HOME/zsh:$FPATH"

# go
export PATH=$PATH:/usr/local/go/bin
export GOBIN=/usr/local/go/bin

# Expo
export REACT_EDITOR=code

# Texlive
export PATH="/usr/local/texlive/2021/bin/x86_64-linux:$PATH"

# For Loading the SSH key
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh

# Maven
export M2_HOME=/usr/local/bin/maven
export MAVEN_HOME=/usr/local/bin/maven
export PATH=$PATH:$M2_HOME/bin

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship.toml
