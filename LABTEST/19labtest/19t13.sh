
data="
fileName: 1.sh
fileName: 2.txt
fileName: 3.sh
fileName: 4.txt
fileName: 5.sh
folderName: shFolder
folderName: txtFolder
folderName: OthersFolder
fileName: file.doc
"

while read -r line; do
  prefix=${line%%:*}   
  value=${line#*: }   

  if [ "$prefix" = "fileName" ]; then
    touch "$value"      
  elif [ "$prefix" = "folderName" ]; then
    mkdir "$value"   
  fi
done <<< "$data"

while read -r line; do
  prefix=${line%%:*}   
  value=${line#*: }  

  if [ "$prefix" = "fileName" ]; then

    extension="${value##*.}"
    
    if [ "$extension" = "sh" ]; then
      
      mv "$value" "shFolder/"
    elif [ "$extension" = "txt" ]; then
      
      mv "$value" "txtFolder/"
    else
      
      mv "$value" "OthersFolder/"
    fi
 
  fi
done <<< "$data"



