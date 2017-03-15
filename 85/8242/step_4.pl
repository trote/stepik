#!/usr/bin/perl -w

use warnings;
use strict;

sub discr {
    my ( $a, $b, $c ) = @_;

    $b ** 2 - 4 * $a * $c;
}

sub roots {
    my ( $a, $b, $d ) = @_;
    
    ( (-$b + sqrt($d)) / (2 * $a), (-$b - sqrt($d)) / (2 * $a) );
}

my ( $a, $b, $c ) = (1, -8, 7);
my $d = discr $a, $b, $c;
my ( $x1, $x2 ) = roots $a, $b, $d;

if ( $a == 1 ) {
    print sprintf "x^2 - 8x + 7 = (x%+d)*(x%+d)", -$x1, -$x2;
} else {
    print sprintf "x^2 - 8x + 7 = $a*(x%+d)*(x%+d)", -$x1, -$x2;
}

__END__

=head1 NAME

Разложение многочлена на множители

=head1 DESCRIPTION

Разложите на множители: x2−8x+7

=cut
