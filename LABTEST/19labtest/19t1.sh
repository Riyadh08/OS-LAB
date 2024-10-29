folder_cnt=0
file_cnt=0

while IFS= read -r read_line; 
do
    if [[ $read_line == "fileName"* ]]; 
    then
        ((file_cnt++))
    elif [[ $read_line == "folderName"* ]]; 
    then
        ((folder_cnt++))
    fi
done < "input.txt"


for ((i=1; i<=folder_cnt; i++)); 
do
    mkdir "folder$i"
done

for ((i=1; i<=file_cnt; i++)); 
do
    touch "file$i.ext"
done


file_index=0
while IFS= read -r line; do
    if [[ $line == "fileName"* ]]; then
        file=$(echo "$line" | cut -d ' ' -f 2)  # Extract the file name with extension
        ext="${file##*.}"  # Get the extension after the last dot
        mv "file$((++file_index)).ext" "file$file_index.$ext"
    fi
done < "input.txt"


mv *.sh sh
mv *.txt txt
mv *.doc doc
mv *.docx docx
mv *.pdf pdf
mv *.c c
mv *.img img
mv ./txt/input.txt ./input.txt
mv ./sh/script.sh ./script.sh

