#!/bin/bash -x
read -p "Enter number : " n
printf "\n"
counter=1

for(( i=1;i<=$n;i++  ))
do
        har=`echo "scale=2;1/$i" | bc -l`
        printf $har
        printf "\t"
done
printf "\n\n"
echo "or"
printf "\n\n"

for(( i=1;i<=$n;i++  ))
do
        printf "1/$i"
        printf "\t"
done

