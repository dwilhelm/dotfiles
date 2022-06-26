function prompt {
    write-host ""
    write-host -NoNewLine -f Green (whoami)
    write-host -NoNewLine -f Green "@"
    write-host -NoNewLine -f Green (hostname)
    write-host -NoNewLine " "
    write-host -NoNewLine -f Cyan (get-date)
    write-host -f Yellow " $PWD"
    return "> "
}