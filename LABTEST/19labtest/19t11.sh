file="problem.txt"


while fileread= read -r line
do

# line="type: myfile.txt"
# type=${line%%:*}
# echo "$type"  
# Output: type


            type=${line%%:*} # Remove evrything from the first colon

# line="type: myfile.txt"
# name=${line#*:}
# echo "$name"  
# Output:  myfile.txt

            name=${line#*:}

            if [ "$type" = "filename" ];
            then 

                        touch "$name"
                        
                        if [[ "$name" == *.* ]];
                        then
                                    ftype=${name##*.}
                        else
                                    ftype="others"
                        fi
                        mkdir -p "$ftype"
                        mv "$name" "$ftype"/

                      
            elif [ "$type" = "foldername" ]
            then
                        mkdir -p "$name"
            fi
done < "$file"


