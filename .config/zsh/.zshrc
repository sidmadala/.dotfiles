# getting system properties
neofetch

############ Antigen Config ############
# MacOS antigen file
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Load theme


# Bundles from specied repos (user/repo folder/plugin)
antigen bundle robbyrussell/oh-my-zsh plugins/vscode
antigen bundle esc/conda-zsh-completion
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting  # always install last for proper completion

# zstyle for tab highlighting
zstyle ':completion:*' menu select

# Install and run bundles
antigen apply
############ Antigen Config ############

# Load custom aliases 
if [ -s "$HOME/.config/zsh/.alias" ]; then
    source "$HOME/.config/zsh/.alias"
    # echo 'made aliases'
fi 

# Load path file 
if [ -s "$HOME/.config/zsh/.path" ]; then
    source "$HOME/.config/zsh/.path"
    # echo 'made path'
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

# echo 'initialized shell'
