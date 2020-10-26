#!/bin/bash

for f in normalTrafficTest.txt
do
   while read -r GET
 do
    read -r User_Agent
    read -r Pragma
    read -r Cache_control
    read -r Accept
    read -r Accept_Encoding
    read -r Accept_Charset
    read -r Accept_Language
    read -r Host
    read -r Cookie
    read -r Connection
    echo "${GET#*=},${User_Agent#*=},${Pragma#*=},${Cache_control#*=},${Accept#*=},${Accept_Encoding#*=},${Accept_Charset#*=},${Accept_Language#*=},${Host#*=},${Cookie#*=},${Connection#*=}" >> outputfile.csv
 done < "$f"
done

