if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx LESS '-R -I'

set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

set fish_aliases ~/.config/fish/fish_aliases.fish
set bash_aliases ~/.bash_aliases
set bash_globals ~/.bash_globals
set bash_scripts ~/.bash_scripts

if test -f $fish_aliases
    source $fish_aliases
end

if test -f $bash_aliases
    source $bash_aliases
end

if test -f $bash_globals
    source $bash_globals
end
