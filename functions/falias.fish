function falias
    set command (cat ~/.config/fish/fish_aliases.fish | fzf)
    set current_command (echo $command | awk -F'=' '{print $2}' | tr -d "'")

    echo -e "\n$command\n"
    echo -e "eval: $current_command\n"

    eval $current_command
end
