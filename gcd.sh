#!/bin/bash

if [ $# -ne 2 ]; then
        echo "2つの自然数を入れてください。" 1>&2
        exit 1
fi

if [[ $# =~ ^0+[0-9a-zA-Z]* ]]; then
         echo "2つの自然数を入れてください。" 1>&2
         exit 1
fi


check=`expr "$1" + 1 2>/dev/null`
#echo "check1: $check"
if [ -z $check ] || [ $check -le 1 ]; then
        echo "1以上の自然数を入れてください。" 1>&2
        exit 1
fi

check=`expr "$2" + 1 2>/dev/null`
#echo "check2: $check"
if [ -z $check ] || [ $check -le 1 ]; then
        echo "1以上の自然数を入れてください。" 1>&2
        exit 1
fi

gcd() (
        if (( $1 % $2 == 0)); then
                echo $2
        else
                gcd $2 $(( $1 % $2 ))
        fi
)

gcd $1 $2
#echo "status:"$?
#echo "1:"$1
#echo "2:"$2
#echo "last:"$#
