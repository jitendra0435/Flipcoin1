#!/bin/bash -x
   head=1
   tail=0
   per=$((RANDOM%2))
    if [ $per -eq  $head ]
      then
        echo "Head"
      else
        echo "tail"
   fi


