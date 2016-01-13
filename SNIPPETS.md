# Snippets

This page has shell script snippets. These are POSIX-compatible.


### while loop with an index

Example:

    i=0
    max=3
    while [ "$i" -le "$max" ]
    do
        echo "output: $i"
        true $((i=i+1)
    done

Notes:

  * `true $(( i++ ))` doesn't work in all cases, so we use `true $((i=i+1))`.
  * Credit: http://stackoverflow.com/questions/1445452/shell-script-for-loop-syntax


### do ... while loop

One way to accomplish a do ... while loop:

    while true; do
        ... commands ...
        condition || break
    done

A versatile version of a do ... while has this structure:

    while 
        ... commands ...
    do :; done

Example:

    i=3
    while
        echo "example $i"          # this command runs each iteration
        : ${start=$i}              # capture the starting value of i
        echo "in the loop"         # your code goes here; needed for the loop
        i="$((i+1))"               # increment the variable of the loop.
        [ "$i" -lt 20 ]            # test the limit of the loop.
    do :;  done

Notes:

  * Credit: http://unix.stackexchange.com/questions/60098/do-while-or-do-until-in-posix-shell-script


### case statement that skips option flags

Example:

    case "$x" in
        --) echo "a double dash terminates options" ;;
        -*) echo "a single dash is an option" ;;
         *)  echo "anything else is an argument" ;;
    esac