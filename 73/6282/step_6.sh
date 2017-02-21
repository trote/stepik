#!/bin/bash

case $1 in
0)
    printf "No students"
    ;;
1)
    printf "%u student" $1
    ;;
2)
    printf "%u students" $1
    ;;
3)
    printf "%u students" $1
    ;;
4)
    printf "%u students" $1
    ;;
*)
    printf "A lot of students"
esac
