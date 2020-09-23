## 스크립트 이름 - script.sh
file_name=$0      
echo $file_name
## 전체 파라미터 - a b c
all_param=$*
echo $all_param
## 파라미터 길이 - 3
param_length=$#
echo $param_length

## 공백으로 구분된 파라미터
param1=$1  # a
param2=$2  # b
param3=$3  # c
