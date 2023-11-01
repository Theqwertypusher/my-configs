export PATH=$HOME/bin:/usr/local/bin:$PATH # If you come from bash you might have to change your $PATH.
export ZSH="/Users/jason/.oh-my-zsh"       # Path to your oh-my-zsh installation.

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

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

# Uncomment one of the following lines to change the auto-update behaviorser
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:update' frequency 7 # change how often to auto-update (in days).

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# This sents precision to 2 digits
SPACESHIP_EXEC_TIME_PRECISION=3

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding  those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

#ALIASES

##GIT
alias gi="git init"
alias ga="git add"
alias gaa="git add ."
alias gcl="git config --list"
alias gst="git status -s"
alias gb="git branch"
alias gcl="git clone"
alias gco="git checkout"
alias gcm="git commit -m"
alias gf="git reflog"
alias gsld="git stash list --date=local"
alias gsl="git stash list --pretty=format:'%C(red)%h%C(reset) - %C(dim yellow)(%C(bold magenta)%gd%C(dim yellow))%C(reset) %<(70,trunc)%s %C(green)(%cr) %C(bold blue)<%an>%C(reset)'"
alias gsa="git stash apply stash@{0}"
alias gsp="git stash push -m"
alias gpo="git pull origin"
alias gl="git log --all --decorate --oneline --graph"
alias glb="git log --graph --abbrev-commit --decorate  --first-parent"
alias gcgl="git config --global --list"
alias new="git checkout -b"
alias gpod="git pull origin develop"
alias gcon="git config --global --edit"
alias push="git push -u origin HEAD"
alias del="git branch -D"
alias cur="git branch --show-current"
alias ccur="cur | tr -d '\n' | pbcopy"
alias resets="git reset --soft HEAD~1"
alias dif="git difftool"
alias difh="git difftool --tool-help"
alias push="gaa && gcm"
alias gac="git commit -am"
alias undo="git reset --soft HEAD~1"
alias gc="better-commits"
alias gbc="git branch --show-current | pbcopy"

##ROUTETOPROJECTSC
alias g1="cd Desktop/ada-the-frontend"
alias gg1="code Desktop/ada-the-frontend"

##NPM
alias ns="npm start"
alias nr="npm run"
alias nrd="npm run dev"
alias nrs="npm run storybook"
alias ni="npm install"
alias nid="npm install -D"
alias nrt="npm run test"
alias nrw="npm run watch"
alias nrl="npm run lint"
alias ngl="npm ls -g"

## YARN
alias ya="yarn add"
alias yad="yarn add -D"

##NAVIGATION
alias sshc="cd ~/.ssh && lsa"
alias gitc="vim ~/.gitconfig"
alias gcm="git checkout main"
alias docs="cd ~/Documents"

##REACT
alias ncra="npx create-react-app"

##TERMINAL
alias oz="code ~/.zshrc"
alias soz="source ~/.zshrc"
alias t="touch"
alias kan="killall -9 node"
alias lsa="ls -al"

##YARN
alias ya="yarn add"
alias yad="yarn add -D"
alias yrs="yarn run storybook"
alias ys="yarn start"
alias yd="yarn dev"

##OTHER
alias img="exiftool"
alias imgc="exiftool -all= "
alias scli="speedtest-cli"
alias paths='echo -e ${PATH//:/\\n}'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

## BIN
alias bin="cd /usr/local/bin"
alias csetup="bin && code setup.sh"
alias setup=". setup.sh"

# create folder and files
function mkfile() {
    mkdir -p "$1" && touch "$1"/"$2"
}

# delete all folders
# prints tree of directory
# ask if sure you want to delete
# have sel

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

echo ".zshrc successfully loaded!"

# example aliaes
# alias check='if [ -s "$HOME/test.txt" ]; then echo "it exists"; fi'
# check_file() {
#     if [ -s "$HOME/test.txt" ]; then
#         echo "it exists"
#     fi
# }

# -e FILE: Checks if the specified file exists.
# -f FILE: Checks if the specified file exists and is a regular file.
# -d FILE: Checks if the specified file exists and is a directory.
# -s FILE: Checks if the specified file exists and has a size greater than zero.
# -r FILE: Checks if the specified file is readable.
# -w FILE: Checks if the specified file is writable.
# -x FILE: Checks if the specified file is executable.
# -z STRING: Checks if the specified string is empty.i
# -n STRING: Checks if the specified string is not empty.
# STRING1 = STRING2: Checks if the two strings are equal.
# STRING1 != STRING2: Checks if the two strings are not equal.
# INTEGER1 -eq INTEGER2: Checks if the two integers are equal.
# INTEGER1 -ne INTEGER2: Checks if the two integers are not equal.
# INTEGER1 -lt INTEGER2: Checks if the first integer is less than the second integer.
# INTEGER1 -le INTEGER2: Checks if the first integer is less than or equal to the second integer.
# INTEGER1 -gt INTEGER2: Checks if the first integer is greater than the second integer.
# INTEGER1 -ge INTEGER2: Checks if the first integer is greater than or equal to the second integer.
