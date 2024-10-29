# name="John"
# car="Ford Escort"
# age=21
# echo "My Name is $name"
# echo "I am $age years old and "
# echo "I drive a $car"

# for i in *
# do
# if [ "$i" != "$(basename "$0")" ]
# then
#     rm "$i"
# fi
# done

for i in {1..99}
do
  if (( i % 2 != 0 ))
  then
    echo "$i"
  fi
done

# read name
# echo "Welcome $name"

# for ((i=1;i<=50;i++))
# do
# echo "$i"
# done

# read x
# read y
# echo "$(($x+$y))"
# echo "$(($x-$y))"
# echo "$(($x*$y))"
# echo "$(($x/$y))"

# read x
# read y

# if (($x < $y))
# then 
# echo "X is less than Y"
# elif (($x > $y))
# then
# echo "X is greater than Y"
# else 
# echo "X is equal to Y"
# fi

# read x
# if [ "$x" = 'y' ] || [ "$x" = 'Y' ]
# then 
# echo "YES"
# else 
# echo "NO"
# fi

# read x
# read y
# read z

# if (( "$x" != "$y" && "$x" != "$z" && "$y" != "$z"))
# then
# echo "SCALENE"
# elif (( "$x" == "$y" && "$x" == "$z" ))
# then
# echo "EQUILATERAL"
# else
# echo "ISOSCELES"
# fi

# pet=(dog cat fish)
# echo ${pet[@]}
# echo "${!pet[@]}"
# echo "${#pet[@]}"

# while read p
# do

#     echo $p | tr A-Z a-z

# done < backup.txt

echo "$0"