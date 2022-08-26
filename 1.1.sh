read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter 3rd number " c
r1=$(($a+$b*$c))
r2=$(($a*$b+$c))
r3=$(($c+$a/$b))
r4=$(( (($a%$b))+$c ))

declare -A operations
operations[1st operation]="$r1"
operations[2nd operation]="$r2"
operations[3rd operation]="$r3"
operations[4th operation]="$r4"


a=( $r1 $r2 $r3 $r4 )

echo "${a[@]}"


for ((i=0;i<4;i++))
do
  for((j=0;j<4-i;j++))
  do
if [[ "${a[j]}" -lt "${a[$((j+1))]}" ]]
then
   t=${a[j]}
a[j]=${a[$((j+1))]}
a[$((j+1))]=$t
fi
done
done
echo "Descending order is ${a[@]}"


for ((i=0;i<4;i++))
do
  for((j=0;j<4-i;j++))
  do
if [[ "${a[j]}" -gt "${a[$((j+1))]}" ]]
then
   t=${a[j]}
a[j]=${a[$((j+1))]}
a[$((j+1))]=$t
fi
done
done
echo "Ascending order is ${a[@]}"
