#! /bin/bash/ 

random=$(( $RANDOM%2 ))
hour_wage=20

case $random in

  0)
   echo "employee is absent"
   echo "dialy wage = 0" ;;

  1) work_hours=$(( $RANDOM%8 ))
    if [ $work_hours -eq 7 ]
     then
       echo "employee is present full_time"
       echo "dialy wage = "$(( 8*$hour_wage ))
     else
       echo "employee is present part_time"
       echo "employee wage = "$(( ($work_hours+1)*$hour_wage ))
     fi  ;;
 esac
