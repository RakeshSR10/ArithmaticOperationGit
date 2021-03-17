#! /bin/bash

read -p "Enter number1 = " a
read -p "Enter number2 = " b
read -p "Enter number3 = " c

res1=$(($a+$b*$c))
echo $res1

res2=$(($a*$b+$c))
echo $res2
