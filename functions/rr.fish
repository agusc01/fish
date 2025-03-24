function rr
    set command (ls -l | grep -v "^d" | grep -v "^l" | awk "{print $9}" | fzf --height 90% --preview "echo {} | awk '\''{for(i=9;i<=NF;i++) printf \$i (i<NF?\" \":\"\n\");}'\'' | xargs -I {} batcat --style=numbers --color=always {}")
    set current_command (echo $command | awk '{print $9}')

    if test -n "$current_command"
        echo -e "\nnvim $command\n"
        echo -e "eval:nvim $current_command\n"
        eval "nvim $current_command"
    else
        echo "Aborted !"
    end

end
