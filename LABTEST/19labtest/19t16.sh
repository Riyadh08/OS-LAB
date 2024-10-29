file_path="problem.txt"

if [ -e "$file_path" ]; then
	cat "$file_path"
	while IFS= read -r line; do
	if [[ "$line" == *"folderName: "* ]]; then
	
		foldername="${line#*: }"
		mkdir -p "$foldername"
		echo "created folder: $foldername"
		
	elif [[ "$line" == *"fileName: "* ]]; then
	
		filename="${line#*: }"
		file_extension = "${filename##*.}"
		touch "$filename"
		echo "Created file: $filename"
		
		case "$file_extension" in
		"sh") 
			mv "$filename" "shFolder/"
			echo "Moved $filename to shFolder"
			;;
		"txt")
			mv "$filename" "txtFolder/"
			echo "Moved $filename to txtFolder"
			;;
		*)
			mv "$filename" "OthersFolder/"
			echo "Moved $filename to OthersFolder"
			;;
		esac
	
	fi
	done < "$file_path"
	
else
	echo "File not found"
fi
