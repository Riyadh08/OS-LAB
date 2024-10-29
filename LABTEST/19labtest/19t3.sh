echo "Galib"

categorize(){

filename="$1"

if [[ "$filename" == *.* ]]; then
	extension="${filename##*.}"
else
	extension="others"
fi


mkdir -p "$extension"_files
touch "$filename"
mv "$filename" "$extension"_files/"$filename"

}

<<multi
this program take user input as filename from user and dynamically assign file into its extension folder

if user, press q, it will terminate the program

multi


while true; do

	read -p "Enter a filename : " filename
	
	if [ "$filename" == "q" ]; then
		break
	else
	
	
		categorize "$filename"
		echo "File '$filename' has been categorized"
		
	fi
		
	
done
