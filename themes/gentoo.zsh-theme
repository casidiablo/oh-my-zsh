function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo λ; fi
}

clock_array=(🕐  🕜  🕑  🕝  🕒  🕞  🕓  🕟  🕔  🕠  🕕  🕡  🕖  🕢  🕗  🕣  🕘  🕤  🕙  🕥  🕚  🕦  🕛  🕧 )

nyan=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

function check_email {
	count=`/bin/cat ~/.newemail`
	if [ "$count" -gt 0 ]; then
		echo "📨  "
	else
                rand=`ran`
		if [ "$rand" -gt 98 ]; then
                  echo -e "\033]1337;File=inline=1:$nyan\a"
                fi
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

if [[ `uname` = "Linux" ]]; then
    PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}) %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '
else
    PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%})$(check_email)%{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '
fi

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
