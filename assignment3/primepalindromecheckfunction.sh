#!/bin/bash -x
function check_palindrome()
{
   #echo $1
   num=$1
   rev=""
   while [ $num -gt 0 ]
   do
       # Get Remainder
       s=$(( $num % 10 ))

      # Get next digit
      num=$(( $num / 10 ))

      # Store previous number and
      # current digit in reverse
      rev=$( echo ${rev}${s} )
 		
   done
	echo $rev
}

function check_prime()
{
   #echo $1
   num=$1
   counter=0

	for (( i=2; i<=$num/2; ++i ))
	do
        #check for non prime number
        if [ $(($num%$i)) -eq 0 ]
        then
                counter=1
                break
        fi
	done

	if [ $counter -eq 0 ]
	then
   	             return 0
	else
      	          return 1
		fi
}


read -p "Enter number : " a

result="$( check_prime $a )"
checkprime=$?
 if [ $checkprime -eq 0 ]
   then
						printf "\n"
                   echo "A. Number is Prime"
   else
							printf "\n"
                   echo "A. Not a prime number."
      fi

result2="$( check_palindrome $a )"
printf "\n"
echo "B. Palindrome Number is : "$result2
printf "\n"

result3="$( check_prime $result2 )"
checkprime3=$?
 if [ $checkprime3 -eq 0 ]
   then
                  printf "\n"
                   echo "C. Palindrome Number is also Prime"
   else
                     printf "\n"
                   echo "A. Palindrome number is not prime number."
      fi


