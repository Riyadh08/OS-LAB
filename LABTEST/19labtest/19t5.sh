if [ -e "problem.txt" ]; then
while read -r line; 
do
if [[ $line == "fileName:"* ]]; then
name="${line#filename: }"
touch "$name"
if [[ "$name" == *.* ]]; then
extension="${name##*.}"
folder="${extension}"
else
folder="others"
fi
mkdir -p "$folder"
mv "$name" "$folder/"
fi
done < "problem.txt"
#else
#echo "The 'problem.txt' is not available"
fi