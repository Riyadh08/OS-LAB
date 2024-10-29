# echo $SHELL
# echo $PATH

# echo -n "Enter name of file to delete: "
# read file
# echo "Type 'y' to remove it, 'n' to change your mind..."
# rm -i $file
# echo "That was YOUR decision"

# let X=10+2*7
# echo $X

# echo -n "Enter the first number:"; read x
# echo -n "Enter the second number:"; read y
# add=$(($x+$y))
# sub=$(($x-$y))
# mul=$(($x*$y))
# div=$(($x/$y))
# mod=$(($x%$y))
# echo "Sum: $add"
# echo "Difference: $sub"
# echo "Product: $mul"
# echo "Quotient: $div"
# echo "Remainder: $mod"

# s1="ryad"
# s2="ryad1"
# if [ -z s1 ]
# then echo "equal"
# fi

# echo -n "Enter your login name:"
# read name
# if [ "$name"="$USER" ]
# then
# echo "Hello, $name"
# else
# echo "You are not $USER.So who are you?"
# fi

# echo "$#; $0; $1; $2; $*;$@"

# echo -n "Enter a number 1<x<10:"
# read x
# case $x in
# 1)echo "Value of x is 1.";;
# 2)echo "Value of x is 2.";;
# 3)echo "Vlaue of x is 3.";;
# 4)echo "Value of x is 4.";;
# 0|10)echo "Wrong number.";;
# *)echo "Unrecognized value.";;
# esac

# echo -n "Enter a number:";read x
# let sum=0
# for((i=1;i<x;i++));do
# let "sum = $sum+$i"
# done
# echo "The sum of the first $x numbers is:$sum"

# echo -n "Enter a number:";read x
# let sum=0;let i=1
# while [ $i -le $x ]; do
# let "sum=$sum + $i"
# let "i=$i+1"
# done
# echo "The sum of the first $x numbers is:$sum"

# st=0123456789
# echo ${st:6:2}

# hello(){
#     echo "You are in function hello()"
# }
# echo "Calling function hello()..."
# hello
# echo "You are now out of function hello()"

# function check() {
#     if [ -e "$HOME/Desktop/Labtest1/$1" ]; then 
#         return 0
#     else
#         return 1
#     fi
# }

# read -p "Enter the filename to check: " x
# if check "$x"; then
#     echo "$x exists!"
# else
#     echo "$x does not exist!"
# fi


# for i in *; do
#     if [ -f "$i" ]; then
#         echo "Displaying contents of $i:"
#         cat "$i"
#         echo "=========================="
#     fi
# done

for i in *
do
    if [ -f "$i" ]
    then
        if [ "$i" != "$(basename "$0")" ]  # Compare only the filename
        then
            rm "$i"
        fi
    elif [ -d "$i" ]
    then
        rmdir "$i"
    fi
done
