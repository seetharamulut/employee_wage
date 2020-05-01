#! /bin/bash/ 

random=$(( $RANDOM%2 ))
hour_wage=20
monthly_days=0
monthly_wage=0
case $random in

  0)
   echo "employee is absent"
   echo "dialy wage = 0" ;;

  1)  while [ $monthly_days -lt 20 ]
      do
        monthly_days=$(( $monthly_days+1 ))
        work_hours=$(( $RANDOM%8 ))
        if [ $work_hours -eq 7 ]
        then
            monthly_wage=$(( $monthly_wage+(8*$hour_wage) ))
        else
             monthly_wage=$(( $monthly_wage+($(( ($work_hours+1)*$hour_wage )) ) ))
        fi
      done  ;;
      
 esac
echo $monthly_wage
