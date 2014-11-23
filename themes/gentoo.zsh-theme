function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo λ; fi
}

clock_array=(🕐  🕜  🕑  🕝  🕒  🕞  🕓  🕟  🕔  🕠  🕕  🕡  🕖  🕢  🕗  🕣  🕘  🕤  🕙  🕥  🕚  🕦  🕛  🕧 )

function check_email {
	count=`/bin/cat ~/.newemail`
	if [ "$count" -gt 0 ]; then
		echo "📨  "
	else
		check_hour
	fi
}

function check_hour {
	hour_24=`date "+%H"`
	hour=`echo "$hour_24 % 12" | bc`

	if [ "$hour" -eq 0 ]; then
		hour=12
	fi

	minute=`date "+%M"`

	if [ "$minute" -ge 45 -o "$minute" -le 15 ]; then
		clock_array_shift=-1
		if [ "$minute" -le 59 -a "$minute" -ge 45 ]; then
			hour=`echo "$hour + 1" | bc`
		fi
	else
		clock_array_shift=0
	fi

	clock_index=`echo "(($hour * 2) + $clock_array_shift) % 24" | bc`

	if [ "$clock_index" -eq 0 -a "$hour" -eq 12 ]; then
		clock_index=24
	fi

	clock=${clock_array[$clock_index]}

	#echo "$clock "
}

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%})$(check_email)%{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
