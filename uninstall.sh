#!/usr/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

rm -f $HOME/.local/share/applications/WindowsRestart.desktop
rm -rf $HOME/.local/share/WindowsBoot/
