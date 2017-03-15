#!/usr/bin/perl -w

use warnings;
use strict;

sub quadratic {
    my ( $a, $b, $c ) = @_;
    my $tmp = -0.5 * ($b + ($b/abs($b)) * sqrt($b ** 2 - 4 * $a * $c));
    return ($tmp / $a, $c / $tmp);
}

my ( $x1, $x2 ) = quadratic 10, -19, 6;
print abs($x1 - $x2);

__END__

=head1 NAME

Квадратные уравнения. Теорема Виета

=head1 DESCRIPTION

Решите квадратное уравнение: 10x2−19x+6=010x2−19x+6=0
В ответ запишите модуль разности корней.

=cut
