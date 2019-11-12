#!/bin/bash -x
   head=1
   tail=0
  count=0
  count2=0
  total=10
  
  for ((i=1;i<11;i++))
   do
   per=$((RANDOM%2))
    if [ $per -eq  $head ]
       then
       head[count1++]=$head
       else 
       tail[count2++]=$tail
      
   fi
  done
  headpercentage=$(($count1*100/10))
  echo $headpercentage
  tailpercentage=$(($count2*100/10))
  echo $tailpercentage
  
