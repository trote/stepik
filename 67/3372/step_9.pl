#!/usr/bin/perl -w

use warnings;
use strict;

sub modify_list {
    my ( $l ) =  @_;
    my $i = 0;
    while ( $i < @$l ) {
        if ( $l->[$i] % 2 ) {
            splice(@$l, $i, 1);
        } else {
            $l->[$i] = int($l->[$i]/2);
            $i++;
        }
    }
}

my $lst = [1..6];
modify_list($lst);
print "@$lst\n";
modify_list($lst);
print "@$lst\n";
$lst = [10, 5, 8, 3];
modify_list($lst);
print "@$lst\n";

__END__

=head1 NAME

Функции

=head1 DESCRIPTION

Напишите функцию modify_list(l), которая принимает на вход список целых чисел, удаляет из него все нечётные значения, а чётные нацело делит на два. Функция не должна ничего возвращать, требуется только изменение переданного списка, например:

lst = [1, 2, 3, 4, 5, 6]
print(modify_list(lst))  # None
print(lst)               # [1, 2, 3]
modify_list(lst)
print(lst)               # [1]

lst = [10, 5, 8, 3]
modify_list(lst)
print(lst)               # [5, 4]

Функция не должна осуществлять ввод/вывод информации.

=cut
