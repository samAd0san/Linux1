#!/bin/bash

echo "Enter Integer One: " 
read num1

echo "Enter Integer Two"
read num2

#echo "The Integer one is $num1"

#echo "The Integer two is $num2"

if [ $num1 -gt $num2 ]
then 
	echo "Integer1 is Greater"
elif [ $num1 -lt $num2 ] 
then 
	echo "Integer2 is Greater"	
else
	echo "Integer1 is equal to Integer2"
fi
