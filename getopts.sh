#!/bin/sh
a_flag=0
separator=""
while getopts "ap:" option
do
	case $option in
		a)
			a_flag=1
			;;
		p)
			separator="$OPTARG"
			;;
		¥?)
			echo "Usage: getopts.sh [-a][-p separator] target_dir" 1>&2
			exit 1
			;;
	esac
done

# オプション指定を位置パラメータから削除する
shift $(expr $OPTIND - 1)
path="$1"

# -aオプションが指定されたかどうかをシェル変数a_flagの値で判断する
if [ $a_flag -eq 1 ]; then
	ls -a -- "$path"
else
	ls -- "$path"
fi

if [ -n "$separator" ]; then
	echo "$separator"
fi