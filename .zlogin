# startx on login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] || return
echo
read -p "Start Xorg[Y/y]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    startx
fi
