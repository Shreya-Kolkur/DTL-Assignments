#!/bin/sh

echo "STRING MANIPULATION PROGRAM"
echo "1. COMPARE STRING"
echo "2. JOINT TWO STRING"
echo "3. LENGTH OF STRING"
echo "4. OCCURANCE OF CHARACTER"
echo "5. OCCURANCE OF WORD"
echo "6. REVERSE STRING"
echo "ENTER CHOICE:"
read ch

case $ch in
 1)echo "ENTER FIRST STRING:"
   read str1
   echo "ENTER SECOND STRING:"
   read str2
   if [ "$str1" = "$str2" ]; then
    echo "STRINGS ARE EQUAL."
   else
    echo "STRINGS ARE NOT EQUAL."
   fi
   ;;

  2)echo "ENTER FIRST STRING:"
   read str1
   echo "ENTER SECOND STRING:"
   read str2
   str3="$str1$str2"
   echo "JOINT OF STRINGS IS:"`echo $str3`
   ;;

 3)echo "ENTER STRING:"
   read str
   echo "LENGTH OF STRING IS:"`echo $str | wc -c`
   ;;

 4)echo "ENTER STRING"
   read str
   echo "ENTER CHARACTER"
   read cha
   echo "CHARACTER '$cha' OCCURES "`echo $str | grep -o $cha | wc -l` "TIME/S"
   ;;

 5)echo "ENTER STRING:"
   read str
   echo "ENTER WORD"
   read word
   echo "WORD '$word' OCCURES "`echo $str | grep -o $word | wc -l` "TIME/S"
   ;;

 6)echo "ENTER STRING:"
   read str
   echo "REVERSE STRING IS:"`echo $str | rev`
   ;;
esac
