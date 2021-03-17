#! /bin/bash

declare -A dict
declare -a arr

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

echo "--Read values from Dictionary into the Array---"

for (( i=0; i<=${#dict[@]}; i++ ))
do
	arr[$i]=${dict[$i]}
done

echo ${arr[@]}


echo "--sort Array values in Ascending order---"

for (( i=0; i<${#arr[@]}; i++ ))
do
	for(( j=$i+1; j<${#arr[@]}; j++ ))
	do

		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
			temp=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done

echo ${arr[@]}


echo "--sort Array values in Descending order---"

for (( i=0; i<${#arr[@]}; i++ ))
do
        for(( j=$i+1; j<${#arr[@]}; j++ ))
        do

                if [ ${arr[$i]} -lt ${arr[$j]} ]
                then
                        temp=${arr[$i]}
                        arr[$i]=${arr[$j]}
                        arr[$j]=$temp
                fi
        done
done

echo ${arr[@]}
