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
for((i=0;i<=1;i++))
do
for((j=0;j<=1;j++))
do
for((k=0;k<=1;k++))
do
result=$( getflip $i )$( getflip $j )$( getflip $k )
dict[$((c++))]=$result
done
done
done
echo "${dict[@]}"
