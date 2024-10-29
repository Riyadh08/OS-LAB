
n=1
i=1
j=1

for file in `head -n $n problem.txt`:
do
	if [ $file="*Folder" ]
	then
	
        mkdir -p shFolder
	mkdir -p txtFolder
     	mkdir -p OthersFolder
	fi
       

	
	if [ $file="*.sh" ]
	then
		touch  "$i.sh"
		i=$((i+1))
		mv "$i.sh" shFolder	
	fi

	if [ $file="*.txt" ]
	then
		touch  "$i.txt"
		i=$((i+1))
		mv "$i.txt" txtFolder
	fi
	if [ $file="*.doc" ]
	then
		touch "file$j.doc"
		j=$((j+1))
		mv "file$j.doc" OthersFolder
	fi


	n=$((n+1))


done

k=1

for filename in `ls >> new`:
do
	
	if [ $file="*$k.sh" ]
	then
		
		mv "$k.sh" shFolder	
		k=$((k+1))
	fi

	if [ $file="*$k.txt" ]
	then
		mv "$k.txt" txtFolder
		k=$((k+1))
	fi
	if [ $file="*file$k.doc" ]
	then
		
		mv "file$k.doc" OthersFolder
		k=$((k+1))	
	fi




done

