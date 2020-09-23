vStrs="John 1 C
David 2 B
Wick 3 A"
IFS=$'\n'  # 라인단위로 분리 
vArray=($vStrs)
IFS=$' ' # 공백을 기준으로 분리 

for vItem in "${vArray[@]}"
do
  echo "------"
  arr=($vItem)
  echo "name=${arr[0]}"
  echo "rank=${arr[1]}"
  echo "type=${arr[2]}"
done
