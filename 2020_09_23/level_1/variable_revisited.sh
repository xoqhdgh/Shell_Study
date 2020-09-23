# 읽기 전용
# readonly string_variable="hello world" 문법과 동일 함
declare -r string_variable

# 정수
# number_variable=10 문법과 동일 함
declare -i number_variable=10

# 배열
# array_variable=() 문법과 동일 함
declare -a array_variable

# 환경 변수
# export export_variable="hello world" 문법과 동일 함
declare -x export_variable="hello world"

# 현재 스크립트의 전체 함수 출력
declare -f

# 현재 스크립트에서 지정한 함수만 출력
declare -f 함수이름
