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

if test -f ~/.config/fish/fish_aliases.fish
    source ~/.config/fish/fish_aliases.fish
end

if test -f ~/.config/fish/functions/falias.fish
    source ~/.config/fish/functions/falias.fish
end

if test -f ~/.config/fish/functions/history.fish
    source ~/.config/fish/functions/history.fish
end

if test -f ~/.config/fish/functions/rr.fish
    source ~/.config/fish/functions/rr.fish
end

if test -f ~/.config/fish/functions/lfp.fish
    source ~/.config/fish/functions/lfp.fish
end
