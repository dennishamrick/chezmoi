if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
end

# Uses the first conda installation found in the following list
set -x CONDA_PATH $HOME/miniconda3/bin/conda

function conda
    echo "Lazy loading conda upon first invocation..."
    functions --erase conda
    for conda_path in $CONDA_PATH
        if test -f $conda_path
            echo "Using Conda installation found in $conda_path"
            eval $conda_path "shell.fish" "hook" | source
            conda $argv
            return
        end
    end
    echo "No conda installation found in $CONDA_PATH"
end

#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#if test -f /home/dennis/miniconda3/bin/conda
#        status is-interactive && eval /home/dennis/miniconda3/bin/conda "shell.fish" "hook" $argv | source
#else
#    if test -f "/home/dennis/miniconda3/etc/fish/conf.d/conda.fish"
#        . "/home/dennis/miniconda3/etc/fish/conf.d/conda.fish"
#    else
#        set -x PATH "/home/dennis/miniconda3/bin" $PATH
#    end
#end
# <<< conda initialize <<<
set -gx EDITOR nvim
zoxide init fish | source
