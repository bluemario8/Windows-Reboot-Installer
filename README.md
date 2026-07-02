# Windows-Reboot-Installer

A simple linux "application" to automatically reboot and select windows in grub (only once)
It uses grub-reboot so a password prompt is required

The repo contains two scripts you can run. install.sh and uninstall.sh. Install like this:
```
./install.sh 2
```
This "2" is the index of my windows selection in grub. The index is 0 indexed (starts at 0) so index "2" is the 3rd option
