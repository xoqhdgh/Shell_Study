string1="hello"
string2="world"
string3="hello"
string4="hello"
string5="ralph"
string6="burn hair"
if [ ${string1} == ${string2} ]; then
    # 실행 문장이 없으면 오류 발생함
    # 아래 echo 문장을 주석처리하면 확인 가능함
    echo "hello world"
elif [ ${string1} == ${string3} ]; then
    echo "hello world 2"
else
    echo "hello world 3"
fi

# AND
if [ ${string1} == ${string2} ] && [ ${string3} == ${string4} ];then
echo "hello world 4"
fi

# OR
if [ ${string1} == ${string2} ] || [ ${string3} == ${string4} ];then
echo "hello world 5"
fi

# 다중 조건
if [[ ${string1} == ${string2} || ${string3} == ${string4} ]] && [ ${string5} == ${string6} ];then
echo "hello world 6"
fi
