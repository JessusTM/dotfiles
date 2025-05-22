#!/bin/bash
xhost +local:root
pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY ettercap -G

# sudo mv /usr/share/applications/ettercap.desktop ~/.local/share/applications/
