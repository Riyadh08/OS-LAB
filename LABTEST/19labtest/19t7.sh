if [ -e "problem.txt" ]; then
while read -r line; do
if [[ $line == "fileName:"* ]]; then
name="${line#fileName: }"
touch "$name"
echo "$name is created"
if [[ "$name" == *.* ]]; then
extension="${name##*.}"
folder="${extension}"
else
folder="others"
fi
mkdir -p "$folder"
mv "$name" "$folder/"
echo "$name is moved to $folder"
fi
done < "problem.txt"
else
echo "The 'problem.txt' doesn't exist"
fi
