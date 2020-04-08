# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# getting system properties
neofetch

############ Antigen Config ############
# MacOS antigen file
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Load theme
antigen theme romkatv/powerlevel10k

# Bundles from specied repos (user/repo folder/plugin)
antigen bundle robbyrussell/oh-my-zsh plugins/vscode
antigen bundle esc/conda-zsh-completion
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting  # always install last for proper completion

# Install and run bundles
antigen apply
############ Antigen Config ############


# Load custom aliases 
if [ -s "$HOME/.alias" ]; then
    source "$HOME/.alias"
fi 

# Load path file 
if [ -s "$HOME/.path" ]; then
    source "$HOME/.path"
fi 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

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
