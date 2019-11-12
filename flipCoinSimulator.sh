#!/bin/bash -x
   head=2
   head1=3
   tail=0
   tail1=1
  headdcount=0
  tailcount=0
  numberOfflips=20
  
  for ((i=1;i<$numberOfflips;i++))
   do
   per=$((RANDOM%4))
    if [ $per -eq  $head ]
    then
        ((headcount++))       
    elif [ $per -eq $head1 ]
    then
          ((headcount++))
    elif [ $per -eq $tail1 ]
    then 
          ((tailcount++))
    else
          ((tailcount++))             
   fi
 done

  headpercentage=$(($headcount*100/$numberOfflips))
  tailpercentage=$(($tailcount*100/$numberOfflips))
  echo "percentage of tail : "$tailpercentage
  echo "percentage of head : "$headpercentage 
