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

my ($x, $y) = cramer [ [2, 5], [1, -3] ], [-11, 11];
print $x * $y;

__END__

=head1 NAME

Системы уравнений

=head1 DESCRIPTION

Решите систему уравнений: {2x+5y=−11x−3y=11{2x+5y=−11x−3y=11
В ответ запишите произведение xx и yy.

=cut
