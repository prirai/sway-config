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
end
