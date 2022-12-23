startTime_s=`date +%s`

####
#### p10k prompt configs
####
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

####
#### basic configs
####
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/opt/openjdk/bin
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=7
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="true"

# General Env Var
export USER_HOME="/Users/user"
export PYENV_ROOT="$HOME/.pyenv"


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
# plugins=(git python wakatime brew history autojump pyenv pipenv sublime zsh-autosuggestions mvn vi-mode golang zsh-syntax-highlighting)
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



####
#### personal configs
####
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

function gn(){
    local brName=$(git branch --show-current)
    command git fetch upstream master:master && command git co master && command git br -D $brName && command git co -b $brName
}



####
#### tech tools config
####
# Go
export GVM_ROOT=~/.gvm
export GOOS="darwin"
export GOARCH="amd64"
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:/usr/local/bin/go
export GOBIN=$HOME/go/bin
export GOPATH=$HOME/go:$HOME/code
export PATH=$PATH:$GOPATH:$GOBIN
# export GOPROXY="https://goproxy.cn"
. $GVM_ROOT/scripts/gvm-default
# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/bin:$PATH
export PYENV_VIRTUALENV_DISABLE_PROMPT=0
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# zookeeper
export PATH=$PATH:$ZOOKEEPER_HOME/bin
export ZOOKEEPER_HOME="/usr/share/zookeeper/"
# kafka
export KAFKA_HOME="/usr/local/kafka_2.13-2.7.0"
# nvm
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# k8s related
alias k="kubectl"
export PATH=$PATH:${KREW_ROOT:-$HOME/.krew}/bin
export PATH=$PATH:$GETMESH_HOME/bin
# others
export GPG_TTY=$(tty)
export BETTER_EXCEPTIONS=1
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_GITHUB_API_TOKEN=""
export BAT_THEME="Monokai Extended"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=1
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
# Nap
export NAP_HOME="$HOME/code/snippets"
export NAP_THEME="material"



####
#### zinit plugins
####
export ZI_HOME="$HOME/.local/share/zinit"
# Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit light-mode wait lucid depth=1 for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions \
 blockf \
    zsh-users/zsh-completions

# oh-my-zsh libs
zi light-mode lucid for \
    OMZ::lib/git.zsh \
    OMZ::lib/grep.zsh \
    OMZ::lib/history.zsh \
    OMZ::lib/functions.zsh \
    OMZ::lib/completion.zsh \
    OMZ::lib/directories.zsh \
    OMZ::lib/key-bindings.zsh \
    OMZ::lib/theme-and-appearance.zsh

# oh-my-zsh plugins
zi light-mode wait lucid for \
    OMZ::plugins/git/git.plugin.zsh \
    OMZ::plugins/pip/pip.plugin.zsh \
    OMZ::plugins/python/python.plugin.zsh \
    OMZ::plugins/history/history.plugin.zsh \
    OMZ::plugins/autojump/autojump.plugin.zsh \
    OMZ::plugins/gitignore/gitignore.plugin.zsh \
    OMZ::plugins/sudo/sudo.plugin.zsh \
    OMZ::plugins/sublime/sublime.plugin.zsh \
    OMZ::plugins/common-aliases/common-aliases.plugin.zsh

zi light-mode wait lucid for \
    https://github.com/wbingli/zsh-wakatime/blob/master/zsh-wakatime.plugin.zsh

zinit ice wait lucid depth=1
zinit light MichaelAquilina/zsh-you-should-use

zinit ice lucid depth=1
zinit light romkatv/powerlevel10k

zinit light-mode wait lucid for \
    zdharma-continuum/fast-syntax-highlighting \
    zdharma-continuum/zsh-diff-so-fancy \
    zdharma-continuum/zinit-package-pyenv \
    OMZ::plugins/autojump/autojump.plugin.zsh \
    OMZ::plugins/history/history.plugin.zsh \
### End of Zinit's installer chunk

# p10k.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# To customize prompt, run `p10k configure` or edit ~/code/dotfiles/p10k.zsh.
[[ ! -f ~/code/dotfiles/p10k.zsh ]] || source ~/code/dotfiles/p10k.zsh



####
#### command line improve
####
prompt_context() {} # remove user name and computer name


####
#### company settings
####
source ~/.binance.zshrc
source ~/.personal.zshrc


endTime_s=`date +%s`
sumTime=$[ $endTime_s - $startTime_s ]
echo "used time: $sumTime seconds"
