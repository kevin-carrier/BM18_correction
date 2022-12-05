#!/bin/bash

echo "R = 0.441"
./DecodingCost -A BothMay -R 0.441 -O 0.00128 0.00128 0.00001 0.00000001 -P ../results_correctedBM18/correctedBM18_R0.44.txt >> correctedBM18_R0.441_tmp1.txt
./DecodingCost -A BothMay -R 0.441 -O 0.000128 0.000128 0.000001 0.00000001 -P correctedBM18_R0.441_tmp1.txt >> correctedBM18_R0.441_tmp2.txt
./DecodingCost -A BothMay -R 0.441 -O 0.0000128 0.0000128 0.0000001 0.00000001 -P correctedBM18_R0.441_tmp2.txt >> correctedBM18_R0.441.txt
rm correctedBM18_R0.441_tmp1.txt correctedBM18_R0.441_tmp2.txt

for i in 2 3 4 5 6 7 8 9
do
	j=$((i-1))
	echo "R = 0.44$i"
	./DecodingCost -A BothMay -R 0.44$i -O 0.00128 0.00128 0.00001 0.00000001 -P correctedBM18_R0.44$j.txt >> correctedBM18_R0.44$i_tmp1.txt
	./DecodingCost -A BothMay -R 0.44$i -O 0.000128 0.000128 0.000001 0.00000001 -P correctedBM18_R0.44$i_tmp1.txt >> correctedBM18_R0.44$i_tmp2.txt
	./DecodingCost -A BothMay -R 0.44$i -O 0.0000128 0.0000128 0.0000001 0.00000001 -P correctedBM18_R0.44$i_tmp2.txt >> correctedBM18_R0.44$i.txt
	rm correctedBM18_R0.44$i_tmp1.txt correctedBM18_R0.44$i_tmp2.txt
done

