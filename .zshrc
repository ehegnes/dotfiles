# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode sudo catimg)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/opt/bin:/usr/x86_64-pc-linux-gnu/gcc-bin/4.7.3:/usr/games/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="/usr/local/games:$PATH"
# export nix stuffs
export NCB="$HOME/.nix-profile/bin"
export NIX_PATH="/nix/var/nix/profiles/per-user/eric/channels"
export PATH="$PATH:$NCB"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
    #export EDITOR='vim'
#else
    #export EDITOR='vim'
#fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# fixes node.js not finding modules
export NODE_PATH=/usr/lib/node_modules/

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

source ~/.ls_colors
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# cd without cd
setopt auto_cd
alias tree="tree -C"
alias v=vim
alias s="sudo "
alias h=history
alias diff=colordiff
alias wpae="sudo vim /etc/wpa_supplicant/wpa_supplicant.conf"
alias wpar="sudo rc-service wpa_supplicant restart"
alias vbm=VBoxManage
alias fbt="FBTERM=1 fbterm"
alias tux='ssh edh45@tux.cs.drexel.edu'
alias asdf='setxkbmap dvorak; xmodmap ~/.Xmodmap'
alias aoeu='setxkbmap us; xmodmap ~/.Xmodmap'
alias lnx="cd /usr/src/linux"
alias l="ls"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias dmesg="dmesg --color=always"
alias gcheat="less ~/.gcheat"
alias espk="espeak -v mb-us2 -p 50 -s 100"
alias e="exit"

# stop fucking correcting these
alias eix="nocorrect eix"

# cargo aliases
alias cr="cargo run"
alias cb="cargo build"

# cabal aliases
alias cbr="cabal run"
alias cbi="cabal install"
alias cbc="cabal configure"
alias cbs="cabal sandbox --init"

mkcd() { mkdir -p -- "$1" && cd -P -- "$1" }

# fbterm bullshit (works, like, half the time)
if [ $FBTERM ]; then
    export TERM=fbterm
fi

# hehehe
#/usr/bin/fortune

# Use `The Fuck` from https://github.com/nvbn/thefuck
alias fuck='$(thefuck $(fc -ln -1))'

# muahahahaahahahhaha
HISTSIZE=9223372036854775807
