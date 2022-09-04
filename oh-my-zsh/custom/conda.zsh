# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/mambaforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/mambaforge/base/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/mamba.sh" ]; then
    . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="/opt/homebrew/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/pavelzwerschke/micromamba";
__mamba_setup="$('/opt/homebrew/bin/micromamba' shell hook --shell zsh --prefix '/Users/pavelzwerschke/micromamba' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/pavelzwerschke/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/pavelzwerschke/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/pavelzwerschke/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<
