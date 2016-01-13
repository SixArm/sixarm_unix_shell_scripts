# Snippets

### do ... while loop

One way to accomplish a do ... while loop:

    while true; do
        ... commands ...
        condition || break
    done


A very versatile version of a do ... while has this structure:

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

Credit: http://unix.stackexchange.com/questions/60098/do-while-or-do-until-in-posix-shell-script

