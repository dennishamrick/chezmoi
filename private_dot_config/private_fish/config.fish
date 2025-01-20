if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
end

fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/dennis/miniconda3/bin/conda
    eval /home/dennis/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/dennis/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/dennis/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/dennis/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

