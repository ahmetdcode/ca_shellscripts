#!/bin/zsh
function File {
    # think you are inside the file
    # Change here
    echo "$#"
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
zsh prog.zsh Shell is fun
