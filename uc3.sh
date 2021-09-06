#!/bin/bash -x
declare -A dict;
function getflip()
{
coin=$((RANDOM%2))
heads=0
if [ $coin -eq $heads ]
then
echo "H"
else
echo "T"
fi
}
c=0
for((i=0;i<=3;i++))
do
for((k=0;k<=3;k++))
do
result=$( getflip $i )$( getflip $k )
dict[$((c++))]=$result
done
done
echo "${dict[@]}"
