
while read -r line; do
		len="${#line}"

		fn="${line:9}"

		#ext finder
		ext="others"

		i=9
		#"${#fn}"
		len=$(($len-1))
		while [ $i -le $len ] 
		do
			sub="${line:$i:1}"
			if [ "$sub" = "." ]
			then
				i=$(($i+1))
				ext="${line:$i}"
				break
			fi
			i=$(($i+1))
		done
#		echo $ext
		#ext finder

		touch "$fn"
		fol="${ext}Fol"
		if [ ! -d $fol ]
		then
			mkdir "$fol/"
		fi

		echo "Moving $fn to $fol"

		mv "$fn" "$fol/"
done < "problem.txt"
