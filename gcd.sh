#!/bin/bash

if [ $# -ne 2 ]; then
        echo "2つの自然数を入れてください。" 1>&2
        exit 0
fi

check=`expr "$1" + 1 2>/dev/null`
#echo "check1: $check"
if [ -z $check ] || [ $check -le 1 ]; then
        echo "1つ目の引数エラー: 1以上の自然数を入れてください。" 1>&2
        exit 0
fi

check=`expr "$2" + 1 2>/dev/null`
#echo "check2: $check"
if [ -z $check ] || [ $check -le 1 ]; then
        echo "2つ目の引数エラー: 1以上の自然数を入れてください。" 1>&2
        exit 0
fi

gcd() (
        if (( $1 % $2 == 0)); then
                echo $2
        else
                gcd $2 $(( $1 % $2 ))
        fi
)

gcd $1 $2
