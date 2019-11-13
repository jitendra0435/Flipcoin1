 #!/bin/bash -x
   head=1
   tail=0
   headdcount=0
   tailcount=0    
      s=""
  read -p "enter how many times want to flip :" nC
  read -p "enter how many coin want to flip :" noOfCoin

  for(( j=1;j<nC;j++ ))
     do
       for(( i=1; i<=noOfCoin ;i++))
         do
           random=$((RANDOM%nC))
            if [ $random -eq 1 ]
             then
              s=$s+"H"
              echo $s
            else
             s=$s+"T"
       done
   done
