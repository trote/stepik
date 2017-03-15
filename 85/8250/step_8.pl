#!/usr/bin/perl -w

use warnings;
use strict;

sub det {
    my $a = shift;

    $a->[0][0] * $a->[1][1] - $a->[0][1] * $a->[1][0];
}

sub cramer {
    my ( $a, $b ) = @_;

    my $det = det $a;
    my $x = [ [$b->[0], $a->[0][1]],
              [$b->[1], $a->[1][1]], ];
    my $y = [ [$a->[0][0], $b->[0]],
              [$a->[1][0], $b->[1]], ];
    (det($x) / $det, det($y) / $det);
}

my ($x, $y) = cramer [ [-3, 1], [1, 1] ], [0, 2];
print $x * $y;

__END__

=head1 NAME

Системы уравнений

=head1 DESCRIPTION

Решите уравнение: (y−3x)2+(x+y−2)2=0(y−3x)2+(x+y−2)2=0
В ответ запишите произведение xx и yy.

=cut
