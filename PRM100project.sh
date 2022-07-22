#! /bin/sh
echo 'Developer 2'
echo 'Developer 1'

for i in $( ls *.txt )
do
        extension="${i##*.}"

        filename="${i%.*}"
        
        filename+='_'$(date '+%Y-%m-%d')
        
        mv $i $filename.$extension
        
done    
