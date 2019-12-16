


#echo $PATH

export PATH=$PATH:/opt/local/bin

# 使得homwbrew的包在system packages 之前加载, 比如python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH


# zsh ------begin--------------

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
ZSH_THEME="random"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(adb ant brew cp docker docker-compose kubectl emacs git github gitignore globalias go golang helm history keychain kubectl man nmap node npm osx pip postgres python redis-cli rsync ruby rust sublime sudo supervisor  svn svn-fast-info thefuck themes timer vim-interaction vscode xcode yarn z)

fpath=(/usr/local/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh
#echo "end zsh"
#-------------zsh end---------------------




# User configuration



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


# config coreutils
if brew list | grep coreutils > /dev/null ; then
	PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
	alias ls='ls -F --show-control-chars --color=auto'
	eval `gdircolors -b $HOME/.dir_colors`
fi  




# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

#alias zshconfig="mate ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
#alias ls='ls -G'  
alias l.='ls -d .*'
alias ll='ls -l'   
alias vi='vim'     
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'  
alias netcat='nc'


# If you come from bash you might have to change your $PATH.


# python
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# pypy
export PATH=/usr/local/share/pypy:$PATH

# home bin
export PATH=$HOME/bin:$PATH

# man path
export MANPATH="/usr/local/man:$MANPATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home/
export PATH=$JAVA_HOME:$PATH

# mysql
export MYSQL_BIN=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL_BIN

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# msf
#PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin



# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/build-tools/28.0.1:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=~/Library/Android/sdk/ndk-bundle
export PATH=$NDK_ROOT:$PATH



# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/local/Cellar/ant/1.10.5/bin
export PATH=$ANT_ROOT:$PATH

export PATH="/usr/local/opt/openssl/bin:$PATH"


# golang
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
# export GOROOT_FINAL=/usr/local/Cellar/go/1.10.3/libexec

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"


# llvm
export LLVM_PATH="/usr/local/opt/llvm"

# export LLVM_PATH="/Users/zhaojm/Library/Developer/Toolchains/Hikari.xctoolchain/usr"

export PATH="$PATH:$LLVM_PATH/bin"
export LDFLAGS="-L$LLVM_PATH/lib"
export CPPFLAGS="-I$LLVM_PATH/include"


# Add environment variable SDKBOX_HOME for sdkbox installer
#export SDKBOX_HOME=/Users/zhaojm/.sdkbox
#export PATH=${SDKBOX_HOME}/bin:$PATH



# 去除重复环境变量
#export PATH=$(echo $PATH | tr : "\n"| sort | uniq | tr "\n" :)
export PATH=$(echo $PATH | tr ':' '\n' | perl -lne 'chomp; print unless $k{$_}; $k{$_}++' | tr '\n' ':' | sed 's/:$//') 


# 设置homebrew的源，二进制的源
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles




# 命令行代理的设置，开启和关闭功能
# 使用privoxy 代理 shadowsocks
# brew services start privoxy
function proxy_off(){
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}

function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy=$http_proxy
    echo -e "已开启代理"
}
