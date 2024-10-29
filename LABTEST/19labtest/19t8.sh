#test
if [[ -e "problem.txt" ]]; then
    while read -r line; do
        if [[ $line == "fileName:"* ]]; then
            name="${line#fileName: }"
            touch "$name"
            echo "File Created: $name"
            if [[ "$name" == *.* ]];then	
            	extension="${name##*.}"
            	folder="${extension}Folder"
            	mkdir -p "$folder"
            	mv "$name" "$folder/"
            	echo "$name is moved to $folder"
            else
            	folder2="OthersFolder"
            	mkdir -p "$folder2"
            	mv "$name" "$folder2/"
            	echo "$name is moved to $folder2"	
            fi
        else
            echo "Invalid input in problem.txt: $line"
        fi
    done < "problem.txt"
else
    echo " 'problem.txt' doesn't exist."
fi

