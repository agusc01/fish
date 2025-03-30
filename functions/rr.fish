function rr
    set precommand (ls -la | sed '1d' | grep -v '^d' | grep -v '^l')
    set command (printf "%s\n" $precommand | fzf --height 90% --preview "echo {} | awk '{print \$9}' | xargs -I {} batcat --style=numbers --color=always {}")

    if test -n "$command"
        echo -e "\nnvim $command\n"
        echo -e "eval:nvim $command\n"
        eval "nvim $command"
    else
        echo "Aborted!"
    end
end
