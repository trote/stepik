#!/usr/bin/perl -w

use warnings;
use strict;

sub closest_mod_5 {
    my ( $x ) = @_;

    return $x if $x % 5 == 0;
    return $x + 5 - $x % 5;
}

__END__

=head1 NAME

Функции и стек вызовов

=head1 DESCRIPTION

Напишите реализацию функции closest_mod_5, принимающую в качестве единственного аргумента целое число x и возвращающую самое маленькое целое число y, такое что:

y больше или равно x
y делится нацело на 5
Формат того, что ожидается от вас в качестве ответа:

def closest_mod_5(x):
    if x % 5 == 0:
        return x
    return "I don't know :("

=cut
