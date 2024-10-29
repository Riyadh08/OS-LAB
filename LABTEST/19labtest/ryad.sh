#To extract file extension-->

# tt="rr.txt"

# temp="${tt##*.}"
# echo "$temp"

# for i in *; do
#     if [ -d "$i" ]; then
#         rm -r "$i"
#     elif [ -f "$i" ]; then
#         # Check if the file does NOT end with .sh or .txt
#         if [[ "$i" != *.sh && "$i" != *.txt ]]; then
#             rm "$i"
#         fi
#     fi
# done

for i in {14..17}
do
touch 19t"$i".sh
done


