#!/bin/bash

# First way of doing the auth GUI
zenity --entry --title="Authentication Required" --text="Please enter your password:" --hide-text

# Second way of doing the auth GUI
#askpass() {
#    prompt=$1
#    echo -e "SETPROMPT $prompt\nGETPIN\nBYE" | pinentry-gnome3 | grep -E '^D ' | sed 's/D //'
#}
#password=$(askpass 'Enter your password:')
