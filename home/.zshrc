# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cbudjan"

# Example aliases
alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh"

alias homesick="$HOME/.homeshick"

source $HOME/.aliases.zsh

# Dr Bunsen customizations
 # move into directory w/o using cd
setopt AUTO_CD

# Vim support in zsh
# export EDITOR="vim"
# bindkey -v

# vi style incremental search
# bindkey '^R' history-incremental-search-backward
# bindkey '^S' history-incremental-search-forward
# bindkey '^P' history-search-backward
# bindkey '^N' history-search-forward

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump Forklift git git-flow textmate brew gem github osx pip sublime)

source $ZSH/oh-my-zsh.sh

# add autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
# enable zsh tab completion & ignore case
autoload -U compinit && compinit -u
setopt nolistambiguous

export AUTOJUMP_IGNORE_CASE=1

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/Users/cbudjan/.rvm/bin:/Users/cbudjan/Scripts

# Setting PATH for EPD-7.3-2
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
