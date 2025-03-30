# fzf history nvim
function fhn
    set precommands (history | grep -v 'copyme' | sed '/^$/d' | awk '!seen[$0]++')
    # TODO: allow wget
    set commands (printf "%s\n" $precommands | grep -v 'wget' | fzf)

    if test -n "$commands"
        set result_file (mktemp /tmp/result.XXXXXX)
        eval $commands >$result_file

        nvim $result_file

        echo -e "\n$commands\n"
        echo -e "\nThe result has been opened in Neovim\n"
    else
        echo "Aborted !"
    end
end
