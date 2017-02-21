#!/bin/bash

gcd () {
    local let "a=$1"
    local let "b=$2"
    while [[ $a -ne $b ]]; do 
        if [[ $a -gt $b ]]; then
            let a-=b
        else
            let b-=a
        fi
    done
    result=$a
}

while true
do
    read a b
    if [[ -z $a || -z $b ]]; then
        echo "bye"
        break
    fi
    gcd $a $b
    echo "GCD is $result"
done
