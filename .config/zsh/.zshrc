# getting system properties
zmodload zsh/zprof

############ Antigen Config ############
# MacOS antigen file
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Load theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

# Load zsh prompt line
# antigen bundle kagamilove0707/moonline.zsh

# Bundles from specied repos (user/repo folder/plugin)
antigen bundle greymd/docker-zsh-completion
antigen bundle esc/conda-zsh-completion
antigen bundle nnao45/zsh-kubectl-completion

# zsh specific bundles
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting  # always install last for proper completion

# zstyle for tab highlighting
zstyle ':completion:*' menu select

# Install and run bundles
antigen apply
############ End Antigen Config ############

############ zsh settings ############
bindkey -v				# vi keybindings
setopt autocd			# auto change dirs by name
setopt autopushd		# treat dirs like stack
setopt pushdignoredups	# ignore dir stack dups 

export BAT_THEME=zenburn	# setting bat theme for file expansion
# Load autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Optimize compinit calls to check cache once a day
# autoload -Uz compinit
# for dump in ~/.zcompdump(N.mh+24); do
#   compinit
# done
# compinit -C
############ End zsh settings ############

# Load custom aliases 
if [ -s "$HOME/.config/zsh/.alias" ]; then
    source "$HOME/.config/zsh/.alias"
fi 

# Load path file 
if [ -s "$HOME/.config/zsh/.path" ]; then
    source "$HOME/.config/zsh/.path"
fi 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export CONDARC="~/.conda/.condarc"
export GIT_EDITOR=nvim
export TERM=xterm-256color
