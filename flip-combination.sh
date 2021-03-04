#!/bin/bash

H=0
T=0
count=10

declare -A coinCombination

for ((i=1; i<=10; i++))
do
   flip=$((RANDOM%2))
   if [ $flip -eq 0 ]
   then
      ((H++))
   else
      ((T++))
   fi
done

coinCombination["H"]=$(($(($H*100))/$count))
coinCombination["T"]=$(($T*100/count))

echo "percentage of Heads Tails :" ${coinCombination[@]}

