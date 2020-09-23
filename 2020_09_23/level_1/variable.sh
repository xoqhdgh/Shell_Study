string="hello world"
echo ${string}

# 지역 변수 테스트 함수
string_test() {
    # 전역 변수와 동일하게 사용함. 만약 local 뺀다면 전역 변수에 덮어씌어지게 됨
    local string="local"
    echo ${string}
}
# 지역 변수 테스트 함수 호출
string_test
# 지역 변수 테스트 함수에서 동일한 변수 명을 사용했지만 값이 변경되지 않음
echo ${string}

# 환경 변수 선언
export hello_world="hello world..."
# 자식 스크립트 호출은 스크립트 경로을 쓰면된다.
/home/export_test.sh

#환경 변수를 테스트하기 위해 export_test.sh 파일을 만들고 선언한 변수를 확인해본다.
echo ${hello_world}
