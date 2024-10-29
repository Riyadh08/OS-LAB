file="problem.txt"

while fileread= read -r line; 
do
  type=${line%%:*}   
  name=${line#*: }   

  if [ "$type" = "fileName" ]; 
  then
    touch "$name"
    
    filetype=${name##*.}
    mkdir -p "$filetype"
    mv $name $filetype/
    
  elif [ "$type" = "folderName" ]; 
  then
    mkdir -p "$name"   
  fi
done < "$file"
