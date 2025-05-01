function rmf
    set precommand (ls -la | sed '1d' | grep -v '^d' | grep -v '^l')
    set command (printf "%s\n" $precommand | fzf --height 90% --preview "echo {} | awk '{print \$9}' | xargs -I {} batcat --style=numbers --color=always {}")

    set file (echo "$command" | awk '{print $9}')

    if test -n "$file"
        echo -e "\nrm -Ivr $file\n"
        echo -e "eval:rm -Ivr $file\n"
        eval "rm -Ivr $file"
    else
        echo "Aborted!"
    end
end
