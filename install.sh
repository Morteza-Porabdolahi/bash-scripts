#!/bin/bash

function install_scripts(){
    for file in *; do 
        file=$(basename -- "$file") 
        filename="${file%.*}"
        extension="${filename##*.}"

        if [[ "$extension" == "$file" ]]; then
            chmod +x "$file"
            sudo ln -s $(realpath $file) /usr/bin 2>/dev/null
        fi

    done
}

install_scripts

exit 0
