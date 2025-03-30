# fzf alias
function falias
    set command (cat ~/.config/fish/fish_aliases.fish | sed '/^$/d' | awk '!seen[$0]++' | fzf)
    set current_command (echo $command | awk -F'=' '{print $2}' | tr -d "'")

    if test -n "$current_command"
        echo -e "\n$command\n"
        echo -e "eval: $current_command\n"

        eval $current_command
    else
        echo "Aborted !"
    end

end
