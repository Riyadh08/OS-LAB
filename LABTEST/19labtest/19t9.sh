while read -r line; do
        name="${line#fileName: }"
        touch "$name"
        if [[ $name == *.* ]]; then
            extension="${name#*.}"
            folder="${extension}"
        else
            folder="other"
        fi
        mkdir "$folder"
        mv "$name" "$folder"
done < "program.txt"