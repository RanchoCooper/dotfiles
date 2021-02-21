export PATH=$PATH:/usr/local/sbin

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_TMUX_AUTOSTART='true'

# POWERLEVEL9K_MODE='awesome-patched'
# POWERLEVEL9k_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
# export POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(pyenv dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time time)
POWERLEVEL9K_VCS_HG_HOOKS=()  # disable hg hook
POWERLEVEL9K_VCS_SVN_HOOKS=()  # disable svn hook
DEFAULT_USER='Rancho'
# POWERLEVEL9K_OS_ICON_BACKGROUND="white"
# POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
plugins=(git python wakatime brew history autojump pyenv pipenv sublime zsh-autosuggestions mvn vi-mode golang gvm) 
#zsh-autosuggestions common-aliases)

## Backups
# vi-mode

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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



#### personal configs ####

alias l.='ls -lh .*'
alias cl="printf '\33c\e[3J'"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"
alias vrcb="vim ~/.vimrc.bundles"
alias renv=". ~/.zshrc"        # reload env
alias clds="sudo find . -name ".DS_Store" -depth -exec rm {} \;"
alias clidea="sudo rm -rf /Users/rancho/Library/Application Support/JetBrains/IdeaIC2020.1/IntelliJ IDEA Global Settings && sudo rm -rf /Users/rancho/Library/Preferences/IntelliJIdea2019.3 &&  sudo rm -rf /Users/rancho/Library/Logs/JetBrains/IntelliJIdea2020.2 && sudo rm -rf /Users/rancho/Library/Application\ Support/JetBrains/IntelliJIdea2020.*"

alias brewup="brew update && brew upgrade"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

alias tmuxx="tmux new-session -A -s Basic"
alias ohmyzsh="~/.oh-my-zsh"
alias cpignore='cp ~/dotfiles/gitignore .gitignore'
alias cpgo-precommit="cp ~/dotfiles/pre-commit.go"
alias cppy-precommit="cp ~/dotfiles/pre-commit.py"
alias god="go mod download"
alias topcommiter="git log --pretty='%aN' | sort | uniq -c | sort -k1 -n -r | head -n 10"

# enviroment vars
export GPG_TTY=$(tty)
export BETTER_EXCEPTIONS=1
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_GITHUB_API_TOKEN="b62a7ad6169ef5814bf3e93b987926779e492aa9"
export BAT_THEME="Monokai Extended"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=1
export PATH="$PATH:/usr/local/opt/mysql@5.7/bin"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export GOOS="darwin"
export GOARCH="amd64"

bindkey ',' autosuggest-accept

## Java
export JAVA_HOME="~/.jdks/openjdk-15.0.2"
export PATH="$PATH:$JAVA_HOME/bin"

## zookeeper
export ZOOKEEPER_HOME="/usr/share/zookeeper/"
export PATH="$PATH:$ZOOKEEPER_HOME/bin"

# kafka
export KAFKA_HOME="/usr/local/kafka_2.13-2.7.0"

## Python
export PYENV_VIRTUALENV_DISABLE_PROMPT=0
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

## Go
export GVM_ROOT=~/.gvm
export PATH="$PATH:/usr/local/bin/go"
export GOPATH="$HOME/go:$HOME/code"
export GOPATH="$GOPATH:~/code:"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOPATH:$GOBIN"
export GO111MODULE=on
export GOPROXY="https://goproxy.cn"
. $GVM_ROOT/scripts/gvm-default

## infratraction

## other

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#### personal config ended ####

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "`pip3 completion --zsh`"

# remove user name and computer name
prompt_context() {}
# company settings
# source ~/.lls.zshrc
