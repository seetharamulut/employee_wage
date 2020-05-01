#! /bin/bash/

random=$(( $RANDOM%2 ))

if [ $random -eq 1 ]
then
   echo "employee is present"
else
   echo "employee is absent"
fi
