#! /bin/bash/ 

random=$(( $RANDOM%2 ))
hour_wage=20
work_hours=0
monthly_days=0
monthly_wage=0
total_hours=0
declare -a dialy_wage
function workhours(){
 echo $(( $monthly_wage/20 ))
}

case $random in

  0)
   echo "employee is absent"
   echo "dialy wage = 0" ;;

  1)  while [ $monthly_days -lt 20 ] && [ $work_hours -lt 100 ]
      do
        monthly_days=$(( $monthly_days+1 ))
        dialy_hours=$(( 1+$RANDOM%8 ))
        dialy_wage[$monthly_days]=$(( $dialy_hours*20 ))
        work_hours=$(( $work_hours+$dialy_hours ))
      done
        if [ $work_hours -gt 100 ]
        then
            work_hours=100
            monthly_wage=$(( $work_hours*$hour_wage ))
        else
             monthly_wage=$(( $work_hours*$hour_wage ))
        fi  ;;
      
 esac
echo ${dialy_wage[@]}
total_hours=$( workhours $monthly_wage )
echo "employee present hours in month : "$total_hours
echo "employee monthly_wage is :" $monthly_wage
