if status is-interactive
end

function fish_greeting
    echo -n "Hello friend! "
    set hour (date +%H)
    if test $hour -lt 4
		echo -n 🌃
    else if test $hour -lt 12
        echo -n 🌅
    else if test $hour -lt 18
        echo -n ☀️
    else
        echo -n 🌙
    end
    echo (set_color yellow; date +%T; set_color normal)
    echo
    echo (set_color -i bryellow ; fortune; set_color normal)
	echo
	echo "To-Dos:"
	cat /home/$USER/todo
	echo
end


# Generated for pdtm. Do not edit.
fish_add_path /home/priyanshu/.pdtm/go/bin

if test "$XDG_CURRENT_DESKTOP" = "KDE" -o "$DESKTOP_SESSION" = "plasma"
    set -x QT_QPA_PLATFORMTHEME kde
else if test "$XDG_CURRENT_DESKTOP" = "GNOME" -o "$DESKTOP_SESSION" = "gnome"
    set -x QT_QPA_PLATFORMTHEME gnome
else if test "$XDG_CURRENT_DESKTOP" = "XFCE" -o "$DESKTOP_SESSION" = "xfce"
    set -x QT_QPA_PLATFORMTHEME gtk2
else if test "$XDG_CURRENT_DESKTOP" = "Hyprland" -o "$DESKTOP_SESSION" = "hyprland" -o -n "$HYPRLAND_CMD"
    set -x QT_QPA_PLATFORMTHEME qt6ct
else if test -n "$SWAYSOCK"
    set -x QT_QPA_PLATFORMTHEME qt6ct
else
    set -x QT_QPA_PLATFORMTHEME qt6ct
end
