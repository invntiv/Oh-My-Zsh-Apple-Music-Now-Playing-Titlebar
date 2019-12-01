#alias ls='ls --color=auto'/Users/joshmack/.zshrc
alias ls='colorls'
alias lc='colorls -lA --sd'
alias list-a='emulator -list-avds'
alias android='emulator -avd Nexus_5X_API_29_x86 &'
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/'

# ------------------------------- ZSH SETTINGS --------------------------------
# ----- options -----
unsetopt NO_BEEP
unsetopt NO_MATCH
setopt AUTO_CD
setopt BEEP
setopt NOMATCH
setopt NOTIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_BEEP
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST

HISTFILE="$HOME/.zsh_history"
HIST_STAMPS=mm/dd/yyyy
DISABLE_UPDATE_PROMPT=true
HISTSIZE=5000
SAVEHIST=5000
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ccc'
ZLE_RPROMPT_INDENT=0

# ----- keys -----
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word

# ----- promt -----
PS1="%F{cyan} %~ >%F{blue}> %F{white}"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/usr/local/anaconda3/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/joshmack/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="POWERLEVEL9K/POWERLEVEL9K"

# ----- plugins -----
PLUGINS_DIR=~/.oh-my-zsh/custom/plugins
source $PLUGINS_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload compinit && compinit

# -------------------------------- POWERLEVEL ---------------------------------

P9K_MODE=nerdfont-complete
TERM=xterm-256color

P9K_PROMPT_ON_NEWLINE=true
P9K_RPROMPT_ON_NEWLINE=false

P9K_LEFT_SEGMENT_SEPARATOR_ICON='\UE0BC'
P9K_RIGHT_SEGMENT_SEPARATOR_ICON='\UE0BA'

P9K_MULTILINE_FIRST_PROMPT_PREFIX_ICON='%F{blue}╭─%F{red}'
P9K_MULTILINE_LAST_PROMPT_PREFIX_ICON='%F{blue}╰%f '

P9K_DIR_SHORTEN_LENGTH=2
P9K=truncate_beginning

##### P9K_TIME #####
P9K_TIME_BACKGROUND=cyan
P9K_TIME_FOREGROUND=black
P9K_TIME_FORMAT=%D{%I:%M}

##### P9K_VCS #####
P9K_VCS_CLEAN_FOREGROUND=black
P9K_VCS_CLEAN_BACKGROUND=green
P9K_VCS_UNTRACKED_FOREGROUND=black
P9K_VCS_UNTRACKED_BACKGROUND=yellow
P9K_VCS_MODIFIED_FOREGROUND=white
P9K_VCS_MODIFIED_BACKGROUND=black
P9K_VCS_UNTRACKED_ICON=●
P9K_VCS_UNSTAGED_ICON=±
P9K_VCS_INCOMING_CHANGES_ICON=↓
P9K_VCS_OUTGOING_CHANGES_ICON=↑
P9K_VCS_COMMIT_ICON=' '

#P9K_COMMAND_EXECUTION_TIME_BACKGROUND=black
#P9K_COMMAND_EXECUTION_TIME_FOREGROUND=blue

P9K_DIR_DEFAULT_ICON=
P9K_STATUS_OK_IN_NON_VERBOSE=true
P9K_STATUS_VERBOSE=false
P9K_COMMAND_EXECUTION_TIME_THRESHOLD=0


##### P9K_CUSTOM_OS_ICON #####

P9K_CUSTOM_OS_ICON="echo -e  "
P9K_CUSTOM_OS_ICON_BACKGROUND=red
P9K_CUSTOM_OS_ICON_FOREGROUND=white

##### P9K_CUSTOM_NOW_PLAYING #####

P9K_CUSTOM_NOW_PLAYING='~/.nowplaying-segment'
P9K_CUSTOM_NOW_PLAYING_BACKGROUND='white'
P9K_CUSTOM_NOW_PLAYING_FOREGROUND='black'

P9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon dir vcs)
P9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time ram time battery)
#disabled segments (status background_jobs command_execution_time)


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	osx
	npm
	z
	brew
	emoji
	vscode
	web-search
	battery
)

precmd(){
music="\e]2;"
        music+=$(~/.nowplaying-title)    
        music+="\a"
        printf $music
}

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
