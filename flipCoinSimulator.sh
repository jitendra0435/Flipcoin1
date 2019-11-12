#!/bin/bash -x
   head=3
   head1=4
   head2=5
   tail=0
   tail1=1
   tail2=2
   headdcount=0
   tailcount=0
  numberOfflips=20
  for ((i=1;i<$numberOfflips;i++))
   do
   per=$((RANDOM%6))
    if [ $per -eq  $head ]
    then
        ((headcount++))       
    elif [ $per -eq $head1 ]
    then
          ((headcount++))
    elif [ $per -eq $head2 ]
    then
          ((headcount++))
    elif [ $per -eq $tail1 ]
    then 
          ((tailcount++))
    elif [ $per -eq $tail2 ]
    then
          ((tailcount++))
    else
          ((taicount++))             
   fi
 done

  headpercentage=$(($headcount*100/$numberOfflips))
  tailpercentage=$(($tailcount*100/$numberOfflips))
  echo "percentage of tail : "$tailpercentage
  echo "percentage of head : "$headpercentage 
