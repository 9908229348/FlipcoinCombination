#!/bin/bash -x
heads=0
flip=$((RANDOM%2))
if [ $flip -eq $heads ]
then
echo "Heads Won"
else
echo "Tails won"
fi
