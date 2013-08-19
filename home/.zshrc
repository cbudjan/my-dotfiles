# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cbudjan"

# Example aliases
# alias zshconfig="sublime ~/.zshrc"
# alias ohmyzsh="sublime ~/.oh-my-zsh"

alias homesick="$HOME/.homeshick"

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

# Path, first path is for homebrew
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/Users/cbudjan/.rvm/bin:/Users/cbudjan/Scripts

# export PATH=/usr/local/share/python:$PATH

# Added by Canopy installer on 2013-04-14
# source /Users/cbudjan/Library/Enthought/Canopy_64bit/User/bin/activate

# Virtualenvwrapper configuration
export WORKON_HOME=~/.virtualenvs
# export PROJECT_HOME=$HOME/Scripts
source /usr/local/bin/virtualenvwrapper.sh

# From https://github.com/justinabrahms/jlilly-bashy-dotfiles/tree/04899f005397499e89da6d562b062545e70d7975
# Make sure there is a default value for WORKON_HOME.
# You can override this setting in your .bashrc.
# if [ "$WORKON_HOME" = "" ]
# then
#     export WORKON_HOME="$HOME/.virtualenvs"
# fi

# Verify that the WORKON_HOME directory exists
# function verify_workon_home () {
#     if [ ! -d "$WORKON_HOME" ]
#     then
#         echo "ERROR: $WORKON_HOME does not exist!"
#         return 1
#     fi
#     return 0
# }

# Create a new environment, in the WORKON_HOME.
#
# Usage: mkvirtualenv [options] ENVNAME
# (where the options are passed directly to virtualenv)
#
# function mkvirtualenv () {
#     verify_workon_home
#     (cd "$WORKON_HOME"; virtualenv $*)
#     workon "${@:-1}"
# }

# Remove an environment, in the WORKON_HOME.
# function rmvirtualenv () {
#     typeset env_name="$1"
#     verify_workon_home
#     env_dir="$WORKON_HOME/$env_name"
#     if [ "$VIRTUAL_ENV" == "$env_dir" ]
#     then
#         echo "ERROR: You cannot remove the active environment."
#         return 1
#     fi
#     rm -rf "$env_dir"
# }

# List the available environments.
# function show_workon_options () {
#     verify_workon_home
#     ls "$WORKON_HOME" | egrep -v '*.egg' | sort
# }

# List or change working virtual environments
#
# Usage: workon [environment_name]
#
# function workon () {
#     typeset env_name="$1"
#     if [ "$env_name" = "" ]
#     then
#         show_workon_options
#         return 1
#     fi

#     activate="$WORKON_HOME/$env_name/bin/activate"
#     if [ ! -f "$activate" ]
#     then
#         echo "ERROR: No activate for $WORKON_HOME/$env_name"
#         return 1
#     fi

#     if [ -f "$VIRTUAL_ENV/bin/predeactivate" ]
#     then
#         source "$VIRTUAL_ENV/bin/predeactivate"
#     fi

#     source "$activate"

#     if [ -f "$VIRTUAL_ENV/bin/postactivate" ]
#     then
#         source "$VIRTUAL_ENV/bin/postactivate"
#     fi
#     return 0
# }


# load RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

source $HOME/.aliases.zsh
