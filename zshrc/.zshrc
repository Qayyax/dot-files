# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"  

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

# Shell prompt configuration
export PROMPT='%1~ %# '

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Default user configuration
export DEFAULT_USER=$USER

# Node Version Manager configuration
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh



# Docker configuration for Apple Silicon
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
export DOCKER_DEFAULT_PLATFORM="linux/amd64"

# Additional PATH configuration for Neovim
export PATH="$HOME/.config/nvim/bin:/usr/local/bin:$PATH"

# export bin variables
export PATH="$HOME/.local/bin:$PATH"

# Homebrew: Python
export PATH="/opt/homebrew/bin:/opt/homebrew/opt/python/bin:$PATH"
# export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"

# Load additional environment management scripts if available
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# custom command to mkdir and cd into it
mkcd() {
    mkdir -p "${1}"
    cd "${1}"
}
export PATH=$PATH:$HOME/go/bin


# opts
setopt CORRECT


# alias
alias lg="lazygit"
alias cl="clear"
alias ff="fastfetch"
alias python="python3"
alias pip="pip3"

# VIM alias
alias vi="nvim"
alias vim="nvim"
alias v="nvim"

# TMUX alias
alias tmn="tmux new -A -s"
alias tmk="tmux kill-session -t"
alias tml="tmux ls"
alias tma="tmux attach -t"
alias tmd="tmux detach"


# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/qayyax/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
