v=(./a
./b
./c)

for vitem in "${v[@]}"
do
	ls $vitem
done
