#! /bin/bash/ 

random=$(( $RANDOM%2 ))
hour_wage=20
work_hours=0
monthly_days=0
monthly_wage=0
total_hours=0
declare -a dialy_wage=( [1]="0" [2]="0" [3]="0" [4]="0" [5]="0" [6]="0" [7]="0" [8]="0" [9]="0" [10]="0" [11]="0" [12]="0" [13]="0" [14]="0" [15]="0" [16]="0" [17]="0" 
                        [18]="0" [19]="0" [20]="0" )


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
        dialy_wage[$(( $monthly_days ))]=$(( $dialy_hours*20 ))
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
for number in ${!dialy_wage[*]}
do
echo "day"$number "-" ${dialy_wage[$number]}
done
total_hours=$( workhours $monthly_wage )
echo "employee present hours in month : "$total_hours
echo "employee monthly_wage is :" $monthly_wage
