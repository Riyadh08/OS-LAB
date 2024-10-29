# for ((i=1;i<=6;i++))
# do
#     touch "file$i"
# done

# for ((i=7;i<=14;i++))
# do
#     mkdir "folder$i"
# done

# for((i=1;i<=10;i++))
# do
#     if [ "$i" -ge 6 ] && [ -f "file$i" ]
#     then
#         rm "file$i"
#     fi
# done

# for i in *
# do
#     if [[ $i != *.sh ]]; then
#         if [ -f "$i" ]; then
#             rm "$i"
#         elif [ -d "$i" ]; then
#             rm -r "$i"
#         fi
#     fi
# done

# echo ${BASH_VERSION}

# for i in ls pwd date
# do
#     echo "--------------$i-----------------"
#     $i
# done

# for item in *
# do
#     if [ -f $item ]
#     then 
#         echo $item
#     fi
# done

# echo $BASH
# echo $BASH_VERSION
# echo $HOME
# echo $pwd

# name="Mark"
# echo "the name is $name"

# echo "Enter name: "
# read name1
# read name2
# read name3
# echo "$name1, $name2, $name3"

# echo "Enter names: "
# read -a names
# echo "Names : ${names[0]},${names[1]}"

# echo $0

# echo -e "Enter the name of the file : \c"
# read file_name

# if [ -f $file_name ]
# then
#     echo "$file_name found"
#     else 
#     echo "$file_name not found"
#     fi

# age=25
# if(("$age" >= 18 && "$age" <= 30))
# then
# echo "valid age"
# else 
# echo "age not valid"
# fi

# num1=20
# num2=5

# echo $(( num1 + num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 % num2 ))
