#!/usr/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

regex='^[0-9]+$'

if ! [[ $1 =~ $regex ]]; then
    echo "error: You must enter the index of windows in grub"
    echo "e.g. 3rd option would be index 2 (0 indexed)"
else
    $SCRIPT_DIR/./uninstall.sh
    # Copy the .desktop file while replacing string "$HOME" with the $HOME environment variable
    sed 's,$HOME,'"$HOME"',g' $SCRIPT_DIR/WindowsRestart.desktop > $HOME/.local/share/applications/WindowsRestart.desktop

    # Copy the scripts and image
    cp -r $SCRIPT_DIR/WindowsBoot/ $HOME/.local/share/
    sed -i 's,2,'"$1"',g' $HOME/.local/share/WindowsBoot/windows_restart.sh
fi

