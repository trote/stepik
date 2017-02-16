#!/usr/bin/perl -w

use warnings;
use strict;
use constant PI => 3.14;

chomp(my $figure = <>);
my $s;
if ( $figure eq 'треугольник' ) {
    chomp(my $a = <>);
    chomp(my $b = <>);
    chomp(my $c = <>);
    my $p = ($a + $b + $c) / 2;
    $s = sqrt($p * ($p - $a) * ($p - $b) * ($p - $c));
} elsif ( $figure eq 'прямоугольник' ) {
    chomp(my $a = <>);
    chomp(my $b = <>);
    $s = $a * $b;
} elsif ( $figure eq 'круг' ) {
    chomp(my $r = <>);
    $s = PI * $r ** 2;
}

print $s;

__END__

=head1 NAME

Задачи по материалам недели

=head1 DESCRIPTION

Жители страны Малевии часто экспериментируют с планировкой комнат. Комнаты бывают треугольные, прямоугольные и круглые. Чтобы быстро вычислять жилплощадь, требуется написать программу, на вход которой подаётся тип фигуры комнаты и соответствующие параметры, которая бы выводила площадь получившейся комнаты.
Для числа π в стране Малевии используют значение 3.14.

Формат ввода, который используют Малевийцы:

треугольник
a
b
c
где a, b и c — длины сторон треугольника

прямоугольник
a
b
где a и b — длины сторон прямоугольника

круг
r
где r — радиус окружности

Sample Input 1:

прямоугольник
4
10

Sample Output 1:

40.0

Sample Input 2:

круг
5

Sample Output 2:

78.5

Sample Input 3:

треугольник
3
4
5

Sample Output 3:

6.0

=cut