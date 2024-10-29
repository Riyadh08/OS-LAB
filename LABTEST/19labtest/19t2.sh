while read line
do
   #echo $line
   file=$(echo "$line" | awk '{print $2}')
   #echo $file
   touch "$file"
   ext="${file##*.}"
   #echo $ext
   
   #echo $ext
   
   if [ "$file" = "$ext" ];
   then
   ext="others"
   fi
   
   mkdir -p $ext
   mv $file $ext
  
done < "problem.txt"