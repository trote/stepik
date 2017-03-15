#!/usr/bin/perl -w

use warnings;
use strict;

sub gauss {
    my ( $a, $b, $x ) = @_;

    my $n = $#$a;
    for my $k ( 0 .. $n - 1 ) {

        # Ищем строку l с максимальным элементом в k-ом столбце
        my $l = -1; 
        my $m = 0; 
        for my $i ( $k .. $n ) {
            if ( abs($a->[$i][$k]) > $m ) {
                $m = abs($a->[$i][$k]);
                $l = $i;
            }
        }

        # Если у всех строк от k до n элемент в k-м столбце нулевой, то система не имеет однозначного решения
        return 0 if $l == -1;
 
        # Меняем местом l-ую строку с k-ой
        if ( $l != $k ) {
            for my $j ( 0 .. $n ) {
                ( $a->[$k][$j], $a->[$l][$j] ) = ( $a->[$l][$j], $a->[$k][$j] );
            }
            ( $b->[$k], $b->[$l] ) = ( $b->[$l], $b->[$k] ); 
        }

        # Преобразуем матрицу
        for my $i ( $k + 1 .. $n ) {
            my $q = $a->[$i][$k] / $a->[$k][$k];
            for my $j ( 0 .. $n ) {
                if ( $j == $k ) {
                    $a->[$i][$j] = 0;
                } else {
                    $a->[$i][$j] -= $q * $a->[$k][$j];
                }
            }
            $b->[$i] -= $q * $b->[$k];
        }
        
        # Вычисляем решение
        $x->[$n] = $b->[$n] / $a->[$n][$n];
        for ( my $i = $n - 1; $i >= 0; $i-- ) {
            my $t = 0;
            for my $j ( 0 .. $n - $i - 1 ) {
                $t += $a->[$i][$i + $j + 1] * $x->[$i + $j + 1];
            }
            $x->[$i] = (1 / $a->[$i][$i]) * ($b->[$i] - $t); 
        }
    }
    1
}

my @a = ([3, -1],
         [2, 3],);
my @b = (7, -10);
my @x;

gauss \@a, \@b, \@x;
print $x[0] * $x[1];

__END__

=head1 NAME

Системы уравнений

=head1 DESCRIPTION

Решите систему методом сложения:

{3x−y=72x+3y=−10{3x−y=72x+3y=−10

В ответ запишите произведение xx и yy.

=cut
