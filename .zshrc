# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# getting system properties
neofetch

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

# MacOS antigen file
source /usr/local/Cellar/antigen/2.2.3/share/antigen/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Load theme
antigen theme romkatv/powerlevel10k

# Bundles from default repo (oh-my-zsh)
antigen bundle zsh-users/zsh-syntax-highlighting

# Install and run bundles
antigen apply

# Load custom aliases 
if [ -s "$HOME/.zsh_aliases" ]; then
    source "$HOME/.zsh_aliases"
fi 

# Load path file 
if [ -s "$HOME/.zsh_path" ]; then
    source "$HOME/.zsh_path"
fi 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
