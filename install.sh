#!/bin/bash

function install_scripts(){
    local SCRIPTS=("Node package installer (npi)" "Ping Utility (pingme)")
    local PS3="Select the package you want to install: "

    select SCRIPT in "${SCRIPTS[@]}"
    do
        case $REPLY in
            1)
                sudo cp ./npi /usr/bin 
                echo 'Use the command "npi" to use the package !'
                exit 0
                ;;
            2)
                sudo cp ./pingme /usr/bin 
                echo 'Use the command "pingme" to use the package !'
                exit 0
                ;;
            *)
                echo "Please select one of the specified scripts !"
                exit 1
                ;;
        esac
    done
}

install_scripts

exit 0
