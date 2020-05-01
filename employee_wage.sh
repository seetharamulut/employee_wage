#! /bin/bash/ -x

random=$(( $RANDOM%2 ))
hour_wage=20

if [ $random -eq 1 ]
then
  work_hours=$(( $RANDOM%8 ))
   if [ $work_hours -eq 7 ]
   then
      echo "employee is present full_time"
      echo "dialy wage = "$(( 8*$hour_wage ))
   else
      echo "employee is present part_time"
      echo "employee wage = "$(( ($work_hours+1)*$hour_wage ))
   fi
else
   echo "employee is absent"
   echo "dialy wage = 0"
fi
