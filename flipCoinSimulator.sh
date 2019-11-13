 #!/bin/bash -x
   head=1
   tail=0
   headdcount=0
   tailcount=0
   numberOfflips=20

    for ((i=1;i<$numberOfflips;i++))
    do
     checkRandom=$((RANDOM%2))
      checkRandom1=$((RANDOM%2))
       checkRandom2=$((RANDOM%2))
    if [ $checkRandom -eq  $head ]
     then
        ((headcount++))       
    elif [ $checkRandom -eq $tail ]
      then
          ((tailcount++))
    elif [ $checkRandom1 -eq $head ]
      then
          ((headcount++))
    elif [ $checkRandom1 -eq $tail ]
      then
          ((taicount++))          
    elif [ $checkRandom2 -eq $head ]
      then
         ((headcount++))   
     else
         ((tailcount++))
   fi
   done
       
    
     headpercentage=$(($headcount*100/$numberOfflips))
     tailpercentage=$(($tailcount*100/$numberOfflips))
     echo "percentage of tail : "$tailpercentage
     echo "percentage of head : "$headpercentage 
 
  
 

