#!/usr/bin/perl -w

use warnings;
use strict;

unless ( $ARGV[0] ) {
    print "No students";
} elsif ( $ARGV[0] == 1 ) {
    print "$ARGV[0] student";
} elsif ( 2 <= $ARGV[0] and $ARGV[0] <= 4 ) {
    print "$ARGV[0] students";
} else {
    print "A lot of students";
}

__END__

=head1 NAME

Скрипты на bash: ветвления и циклы

=head1 DESCRIPTION

Напишите скрипт на bash, который принимает на вход один аргумент (целое число от 0 до бесконечности), который будет обозначать число студентов в аудитории. В зависимости от значения числа нужно вывести разные сообщения. 

Соответствие входа и выхода должно быть таким:

0 -->  No students
1 -->  1 student
2 -->  2 students
3 -->  3 students
4 -->  4 students
5 и больше --> A lot of students

Примечание а): выводить нужно только строку справа, т.е. "-->" выводить не нужно. 
Примечание б): в последней строке слово "lot" с маленькой буквы!

Примечание 2: в этой и всех последующих задачах на написание скриптов, если не указано явно, что нужно проверять вход (например, что он будет именно числом и именно от 0 до бесконечности), то этого делать не нужно!

Пример №1: если ваш скрипт называется ./script.sh, то при запуске его как ./script.sh 1 на экране должно появиться:

1 student

Пример №2: если ваш скрипт называется ./script.sh, то при запуске его как ./script.sh 5 на экране должно появиться:

A lot of students

=cut