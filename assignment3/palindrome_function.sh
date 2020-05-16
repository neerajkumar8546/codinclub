#!/bin/bash -x
s=0
str='2002'
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
		str=$rev
	done
}
var=2002
result="$( check_palindrome $var )"
echo $result
if [ $var -eq $str ]
      then
         echo "Number is Palindrome"
      else
         echo "Number is not palindrome"
fi
