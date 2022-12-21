# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/bin

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_TMUX_AUTOSTART='true'
DEFAULT_USER='Rancho'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python wakatime brew history autojump pyenv pipenv sublime zsh-autosuggestions mvn vi-mode golang zsh-syntax-highlighting)
#zsh-autosuggestions common-aliases)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export VISUAL="vim"
export TERM=xterm-256color

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.



# personal configs
bindkey ',' autosuggest-accept

alias l.='ls -lh .*'
alias cl="printf '\33c\e[3J'"
alias renv=". ~/.zshrc"
alias clds="sudo find . -name ".DS_Store" -depth -exec rm {} \;"
alias gp="git push origin master"
alias gpt="git push origin --tags"

alias bup="brew update && brew upgrade"
alias aptup="sudo apt update && sudo apt upgrade"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

alias tmuxx="tmux new-session -A -s Basic"
alias ohmyzsh="~/.oh-my-zsh"

alias cpignore='cp ~/dotfiles/gitignore .gitignore'
alias cpeditorconfig='cp ~/dotfiles/editorconfig .editorconfig'
alias cpconfig="cpignore && cpeditorconfig"

alias cpgo-precommit="cp ~/dotfiles/pre-commit.go .git/pre-comit.go"
alias cppy-precommit="cp ~/dotfiles/pre-commit.py .git/pre-commit.py"

alias god="go mod download"
alias topcommiter="git log --pretty='%aN' | sort | uniq -c | sort -k1 -n -r | head -n 10"
alias ipython="ipython3"
alias remove-idea="rm -rf /Users/user/Library/Application\ Support/JetBrains/IntelliJIdea2021.3 /Users/user/Library/Caches/JetBrains"

# enviroment vars
## Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"
## zookeeper
export ZOOKEEPER_HOME="/usr/share/zookeeper/"
export PATH="$PATH:$ZOOKEEPER_HOME/bin"
# kafka
export KAFKA_HOME="/usr/local/kafka_2.13-2.7.0"
## pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=0
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

export USER_HOME="/Users/user"
## Go
export GVM_ROOT=~/.gvm
export GOPATH="$HOME/go:$HOME/code"
export GOBIN="$HOME/go/bin"
export GOOS="darwin"
export GOARCH="amd64"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/bin/go"
export PATH="$PATH:$GOPATH:$GOBIN"
export GO111MODULE=on
# export GOPROXY="https://goproxy.cn"
. $GVM_ROOT/scripts/gvm-default
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
## other env vars
export GPG_TTY=$(tty)
export BETTER_EXCEPTIONS=1
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_GITHUB_API_TOKEN="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"
export BAT_THEME="Monokai Extended"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=1
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="$PATH:/Users/user/istio-1.11.2/bin"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# eval $(thefuck --alias)


eval "`pip3 completion --zsh`"

# remove user name and computer name
prompt_context() {}


# company settings
## source ~/.company.zshrc
source ~/.binance.zshrc

# others
## kubectl
alias k="kubectl"
## krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
complete -F __start_kubectl k

## p10k.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
export POWERLEVEL9K_INSTALLATION_DIR="~/powerlevel9k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/code/dotfiles/p10k.zsh.
[[ ! -f ~/code/dotfiles/p10k.zsh ]] || source ~/code/dotfiles/p10k.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
export GETMESH_HOME="$HOME/.getmesh"
export PATH="$GETMESH_HOME/bin:$PATH"

export PATH="$PATH:/Users/user/istio-1.11.3/bin"
complete -F __start_kubectl k

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Nap
export NAP_HOME="$HOME/code/snippets"
export NAP_THEME="material"
