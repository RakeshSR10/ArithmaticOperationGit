#! /bin/bash

declare -A dict

read -p "Enter number1 = " a
read -p "Enter number2 = " b
read -p "Enter number3 = " c

res1=$(($a+$b*$c))
echo $res1

res2=$(($a*$b+$c))
echo $res2

res3=$(($c+$a/$b))
echo $res3

res4=$(($a%$b+$c))
echo $res4

echo "---output values stored in DICTIONARY--"
dict=([1]=$res1 [2]=$res2 [3]=$res3 [4]=$res4)
echo ${dict[@]}

