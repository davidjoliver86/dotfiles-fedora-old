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

# starship
starship init fish | source
