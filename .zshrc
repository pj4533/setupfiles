. ~/setupfiles/zsh/rc

### Added by the Heroku Toolbelt
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:/usr/local/heroku/bin:/Users/pgray/Library/Python/3.6/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pj4533/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pj4533/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pj4533/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pj4533/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


. "$HOME/.local/bin/env"
