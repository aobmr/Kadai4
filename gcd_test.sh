#!/bin/bash

#1
./gcd.sh 80 100
echo "test=$?"
if [ $? -eq 2 ]; then
       echo "成功"
else
       echo "失敗"
fi

#2
./gcd.sh 3
if [ $? -eq 0 ]; then
       echo "成功"
else
       echo "失敗"
fi

#3
./gcd.sh a 1
if [ $? -eq 0 ]; then
       echo "成功"
else
        echo "失敗"
fi
