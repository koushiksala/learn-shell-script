total=$(free | grep Mem | awk '{print$2}')
free=$(free | grep Mem | awk '{print$4}')

used_percent=$(echo "100-($free / $total * 100)"| grep bc -l | awk -F . '{print$1}')


if [ $used_percent -lt 50 ]; then
  echo Mem status is green
elif [ $used_percent -lt 70 ]; then
 echo Mem status is green
else
  echo Mem status is red
fi


