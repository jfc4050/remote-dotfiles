if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_key_bindings fish_user_key_bindings

    set fish_vi_force_cursor

    # Emulates vim's cursor shape behavior
    set fish_cursor_default block
    set fish_cursor_insert line
    set fish_cursor_replace_one underscore
    set fish_cursor_visual block

    fish_config theme choose "Tomorrow Night"

    alias cmb "cmake --build build"

    alias bat batcat
    alias vi nvim

    source ~/.iterm2_shell_integration.fish
end

fish_add_path -m ~/bin
fish_add_path -m .local/bin
fish_add_path -m /usr/local/cuda/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/conda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

conda activate dev

