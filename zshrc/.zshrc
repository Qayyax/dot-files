# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"  # Simple and clean theme without `pyenv` dependencies

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

# Pyenv configurations
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Apache Spark configuration
export SPARK_HOME="/usr/local/spark"
export PATH="$SPARK_HOME/bin:$PATH"

# Docker configuration for Apple Silicon
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0
export DOCKER_DEFAULT_PLATFORM="linux/amd64"

# Additional PATH configuration for Neovim
export PATH="$HOME/.config/nvim/bin:/usr/local/bin:$PATH"

# export bin variables
export PATH="$HOME/.local/bin:$PATH"

# Load additional environment management scripts if available
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# custom command to mkdir and cd into it
mkcd() {
    mkdir -p "${1}"
    cd "${1}"
}
export PATH=$PATH:$HOME/go/bin

# export for Java
export JAVA_HOME="/Users/qayyax/jdk/jdk-24.0.1.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH

# opts
setopt CORRECT


# alias
alias vi="nvim"
alias vim="nvim"
alias v="nvim"
alias lg="lazygit"
alias cl="clear"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/qayyax/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
