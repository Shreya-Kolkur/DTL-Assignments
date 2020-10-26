#!/bin/bash

echo "Enter two numbers"
read a
read b

echo "Menu"
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter choise"
read ch

case $ch in
    1)result=`echo $a + $b | bc`
      ;;
    2)result=`echo $a - $b | bc`
      ;;
    3)result=`echo $a \* $b | bc`
      ;;
    4)result=`echo "scale=2; $a / $b" | bc`
esac
echo "Result : $result"
