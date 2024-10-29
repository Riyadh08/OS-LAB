file="s.txt"
while IFS= read -r line
do
  str=$line
  string=""
  string1=""
  f=0
  for((i=0; i<${#str}; i++));do
  c=${str:$i:1}
  if [ "$f" = "1" ]
    then 
     string+=$c
     fi
     
   if [ "$f" = "2" ]
   then
   string1+=$c
   fi
  if [ "$c" = "." ]
    then 
    f=1
    fi
   if [ "$c" = ":" ]
    then 
    f=2
    fi 
    
  done
  s=""
   s+="$string1"
   s+="$string"
   echo "$s"
  touch $s
  if [ "$string" = "txt" ]
  then 
  mv $s txt
  else if [ "$string" = "sh" ]
  then
  mv $s shell
  else
  mv $s other
  fi
  fi
  

done < "$file"
