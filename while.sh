a_flag=0

while getopts "adf" option
do
  case $option in
    a)
      a_flag=1
      ;;
    d)
      a_flag=2
      ;;
    f)
      a_flag=3
      ;;
    \?)
      echo "Usage: while.sh [-ad]" 1>&2
      exit 1
    ;;
  esac
done

if [ $a_flag -eq 0 ]; then

  number=0
  
  while [ $number -le 2 ]
  do
    echo "Number: ${number}"
    ((number++))
  done

elif [ $a_flag -eq 1 ]; then

  number=0
  
  while :
  do
    if [ $number -gt 2 ]; then
      break
    fi
  
    echo "Number: ${number}"
    ((number++))
  done

elif [ $a_flag -eq 2 ]; then

  startDate=`date +"%Y%m%d" -d "20190101"`
  endDate=`date +"%Y%m%d" -d "20190201"`
  
  while [ "$startDate" != "$endDate" ] ; 
  do 
      echo $startDate
  
      startDate=`date +"%Y%m%d" -d "$startDate + 1 day"`; 
  done

else

  vFileLocation="$PWD/sample.file"
  
  # vFileLocation을 2분에 한번씩 체크해서 파일이 생기면 종료 
  while :
  do
      vCount=`ls ${vFileLocation} | wc -l`
      if [[ "${vCount}" == "1" ]]; then
          echo "file check done."
          python ../hi.py
          break
      fi
  
      echo "file waiting..."
      sleep 2s
  done

fi
