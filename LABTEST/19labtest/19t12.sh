cnt=1
read -p "problem.txt"
while read line
do
echo $line
a=$line
temp="$cnt"
if [[ $a == *".sh"* ]]; then
touch "$temp.sh"
elif [[ $a == *".txt"* ]];then
touch "$temp.txt"
elif [[ $a == *"shFolder"* ]];then
mkdir $temp
elif [[ $a == *"txtFolder"* ]];then
mkdir $temp
elif [[ $a == *"othersFolder"* ]];then
mkdir $temp
elif [[ $a == *".doc"* ]];then
mkdir $temp
fi
cnt=$(($cnt+1))  


for file /*.txt; do
if [ -f "$file" ]; then
mv "$file" "7"
fi

for file /*.sh; do
if[ - "$file" ]; then
mv "$file" "6"
fi