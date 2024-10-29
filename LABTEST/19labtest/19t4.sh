#test
file="prac.txt"
while IFS= read -r line;
do
  str=$line
  str1=""
  str2=""
  f=0
  for ((i=0; i< ${#str}; i++)); do
  s=${str:$i:1}
    if [ "$f" = "1" ]
    then
        str2+="$s"
    fi
    if [ "$f" = "2" ]
    then
        str1+="$s"
    fi
    
    if [ "$s" = "." ]
    then 
        f=1;
    fi
    
    if [ "$s" = ":" ]
    then 
        f=2;
    fi
     
  done
  echo "$str2"
  x=""
  x+="$str1"
  x+="$str2"
  echo "$x"
  touch $x
  if [ "$str2" = "sh" ]
  then 
      mv $x shell
  else if [ "$str2" = "txt" ] 
  then
      mv $x text
  else
      mv $x folder 
  fi
  fi
  
done < $file
