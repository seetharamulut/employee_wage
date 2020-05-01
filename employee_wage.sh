#! /bin/bash/ 

random=$(( $RANDOM%2 ))
hour_wage=20
monthly_days=0
monthly_wage=0
total_hours=0
case $random in

  0)
   echo "employee is absent"
   echo "dialy wage = 0" ;;

  1)  while [ $monthly_days -lt 20 ] && [ $total_hours -lt 100 ]
      do
        monthly_days=$(( $monthly_days+1 ))
        work_hours=$(( $RANDOM%8 ))
        total_hours=$(( $total_hours+($work_hours+1) ))
      done
        if [ $total_hours -gt 100 ]
        then
            total_hours=100
            monthly_wage=$(( $total_hours*$hour_wage ))
        else
             monthly_wage=$(( $total_hours*$hour_wage ))
        fi  ;;
      
 esac
echo "employee present hours in month : "$total_hours
echo "employee monthly_wage is :" $monthly_wage
