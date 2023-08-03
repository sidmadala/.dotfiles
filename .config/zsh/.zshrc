# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Getting system properties
# zmodload zsh/zprof


############ zsh settings ############
bindkey -v				# vi keybindings
setopt autocd			# auto change dirs by name
setopt autopushd		# treat dirs like stack
setopt pushdignoredups	# ignore dir stack dups 
zstyle ':completion:*' menu select	# zstyle for tab highlighting
############ End zsh settings ############

############ Load Config Files ##########

# Load conda configuration
if [ -s "$HOME/.config/zsh/.conda" ]; then
    source "$HOME/.config/zsh/.conda"
fi 

# Load custom aliases 
if [ -s "$HOME/.config/zsh/.alias" ]; then
    source "$HOME/.config/zsh/.alias"
fi 

# Load custom paths
if [ -s "$HOME/.config/zsh/.path" ]; then
    source "$HOME/.config/zsh/.path"
fi 

############ Load Config Files ##########

# Setting nvim as editor
export GIT_EDITOR=nvim
export TERM=xterm-256color
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export EDITOR=nvim

# fnm source
# if [ -x "/opt/homebrew/Cellar/fnm" ] && [ -z $TMUX ]; then
#     OLDPATH="$PATH"
#     eval "$(fnm env)"
#     PATH="$OLDPATH:$FNM_MULTISHELL_PATH/bin"
# fi


# starship prompt
eval "$(starship init zsh)"

# sheldon source
source <(sheldon source)

# zoxide source
eval "$(zoxide init zsh --cmd j)"

# navi completion
eval "$(navi widget zsh)"

# rtx plugin manager
eval "$(rtx activate zsh)"

# Removing duplicates from path
typeset -aU path

# profiling zsh
# zprof
