#!/bin/bash

#1 正常
./gcd.sh 80 100
#echo "test=$?"
if [ $? -eq 0 ]; then
       echo "成功"
else
       echo "失敗"
fi

#2 異常：引数が1つ
./gcd.sh 3
if [ $? -eq 1 ]; then
       echo "成功"
else
       echo "失敗"
fi

#3 異常：引数が文字列を含む
./gcd.sh a 1
if [ $? -eq 1 ]; then
       echo "成功"
else
       echo "失敗"
fi

#4 異常：引数が小数
./gcd.sh 0.1 9.2
if [ $? -eq 1 ]; then
       echo "成功"
else
       echo "失敗"
fi

#5 異常：引数が記号
./gcd.sh "&" 4
if [ $? -eq 1 ]; then
	echo "成功"
else
	echo "失敗"
fi

#6 異常：引数が0から始まる数字
#./gcd.sh 9 00081
#if [ $? -eq 0 ]; then
#	echo "成功"
#else
#	echo "失敗"
#fi
