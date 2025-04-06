function setbrightness
    if test (count $argv) -ne 1
        echo "Use: setbrightness <value between 10 & 100>"
        return 1
    end

    set value $argv[1]

    if test $value -lt 10 -o $value -gt 100
        echo "The value has to be between 10 & 100."
        return 1
    end

    set brightness (echo "scale=2;$value / 100" | bc)

    xrandr --output eDP-1 --brightness $brightness
    echo "$(xrandr --verbose | grep -i brightness | xargs)"
end
