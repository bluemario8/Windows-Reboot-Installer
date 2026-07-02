#!/usr/bin/bash
export SUDO_ASKPASS=$HOME/.local/share/WindowsBoot/askpass-script.sh

WIN_INDEX=2

sudo -A grub-reboot $WIN_INDEX && reboot
