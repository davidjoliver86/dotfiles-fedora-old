# vi key bindings
fish_vi_key_bindings

# let theme handle virtualenvs
set -xg VIRTUAL_ENV_DISABLE_PROMPT 1

# editor
set -xg EDITOR vim

# timezone
set -g theme_date_timezone America/Los_Angeles

# fish greeting
function fish_greeting
end

# no blinking cursor
set fish_cursor_unknown block

# aws autocomplete
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

# theme
set -U fish_color_normal normal
set -U fish_color_command c397d8
set -U fish_color_quote b9ca4a
set -U fish_color_redirection 70c0b1
set -U fish_color_end c397d8
set -U fish_color_error d54e53
set -U fish_color_param 7aa6da
set -U fish_color_comment e7c547
set -U fish_color_match --background=brblue
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion 969896
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel --reverse
set -U fish_pager_color_prefix normal --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D
set -U fish_pager_color_selected_background --background=brblack
set -U fish_pager_color_selected_prefix
set -U fish_pager_color_background
set -U fish_pager_color_secondary_prefix
set -U fish_pager_color_secondary_description
set -U fish_pager_color_secondary_background
set -U fish_pager_color_selected_completion
set -U fish_color_host_remote
set -U fish_color_keyword
set -U fish_pager_color_selected_description
set -U fish_color_option
set -U fish_pager_color_secondary_completion

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

# starship
starship init fish | source
