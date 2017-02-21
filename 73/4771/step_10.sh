#!/bin/bash

op() {
    local let "a=$1"
    local let "op=$2"
    local let "b=$3"
    if [[ $op == '+' ]]; then
        let result=$a+$b
    elif [[ $op == '-' ]]; then
        let result=$a-$b
    elif [[ $op == '*' ]]; then
        let result=$a*$b
    elif [[ $op == '/' ]]; then
        let result=$a/$b
    elif [[ $op == '%' ]]; then
        let result=$a%$b
    elif [[ "$op" == '**' ]]; then
        let result=$a**$b
    else
        echo 'error'
        exit
    fi
}

while true; do       
    read a op b
    if [[ $a == 'exit' ]]; then
        echo 'bye'
        exit
    fi
    op "$a" "$op" "$b"
    echo "$result"
done
