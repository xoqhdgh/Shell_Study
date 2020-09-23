string_test() {
    echo "string test"
}

function string_test2() {
    echo "string test 2"
    echo "인자값: ${@}"
}
string_test
string_test2

# 함수에 인자값 전달하기(공백의로 뛰어서 2개의 인자값을 넘김)
string_test2 "hello" "world"
