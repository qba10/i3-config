#source /etc/X11/xinit/xinitrc.d/30-dbus
export SSH_AUTH_SOCK
export GPG_AGENT_INFO
export GNOME_KEYRING_CONTROL
export GNOME_KEYRING_PID
export OOO_FORCE_DESKTOP=gnome
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export TERMINAL='gnome-terminal'

# exec xrandr --output DP1 --primary
# Launch i3 window manager
eval $(dbus-launch --sh-syntax)
export XDG_CURRENT_DESKTOP=GNOME
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
exec i3-gnome
