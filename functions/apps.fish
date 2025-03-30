function apps
    set command (cd '/usr/share/applications' && ls *.desktop | sed 's/\.desktop$//g' | fzf)

    if test -n "$command"
        eval gtk-launch $command
        exit
    else
        echo "Aborted!"
    end
end
