#!/bin/bash -x
heads=0
hc=0
tc=0
declare -A dict;
for((i=1;i<=10;i++))
do
flip=$((RANDOM%2))
if [ $heads -eq $flip ]
then
out=H
hc=$(($hc+1))
else
out=T
tc=$(($tc+1))
fi
dict[$i]=$out
done
echo "${dict[@]}"
echo "Tails=$(($tc*10)) % and Heads=$(($hc*10)) %"
