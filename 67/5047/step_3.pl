#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $a = <>);
chomp(my $b = <>);
chomp(my $op = <>);

my $res = $a;
my $division_by_zero = 'Деление на 0!';
if ( $op eq '+' ) {
    $res += $b;
} elsif ( $op eq '-' ) {
    $res -= $b;
} elsif ( $op eq '*' ) {
    $res *= $b;
} elsif ( $op eq 'pow' ) {
    $res **= $b;
} elsif ( $op eq '/' ) {
    if ( $b != 0 ) {
        $res /= $b;
    } else {        
        $res = $division_by_zero;
    }
} elsif ( $op eq 'mod' ) {
    if ( $b != 0 ) {
        $res = $a % $b;
    } else {
        $res = $division_by_zero;
    }
} elsif ( $op eq 'div' ) {
    if ( $b != 0 ) {
        $res = int($a / $b);
    } else {
        $res = $division_by_zero;
    }
}
print $res;

__END__

=head1 NAME

Задачи по материалам недели

=head1 DESCRIPTION

Напишите простой калькулятор, который считывает с пользовательского ввода три строки: первое число, второе число и операцию, после чего применяет операцию к введённым числам ("первое число" "операция" "второе число") и выводит результат на экран.

Поддерживаемые операции: +, -, /, *, mod, pow, div, где 
mod — это взятие остатка от деления, 
pow — возведение в степень, 
div — целочисленное деление.

Если выполняется деление и второе число равно 0, необходимо выводить строку "Деление на 0!".

Обратите внимание, что на вход программе приходят вещественные числа.

Sample Input 1:

5.0
0.0
mod

Sample Output 1:

Деление на 0!

Sample Input 2:

-12.0
-8.0
*

Sample Output 2:

96.0

Sample Input 3:

5.0
10.0
/

Sample Output 3:

0.5

=cut
