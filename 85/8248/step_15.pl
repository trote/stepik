#!/usr/bin/perl -w

use warnings;
use strict;

sub quadratic {
    my ( $a, $b, $c ) = @_;
    my $discriminant = $b ** 2 - 4 * $a * $c;
    my @ans;
    if ( $discriminant > 0 ) {
        @ans = ((-$b + sqrt($discriminant)) / (2 * $a), (-$b - sqrt($discriminant)) / (2 * $a));
    } elsif ( $discriminant == 0 ) {
        @ans = (-$b + sqrt($discriminant)) / (2 * $a);
    } else {
        @ans = ();
    }
    @ans;
}

my @ans = quadratic 3, -4 - 9, 3 * 8 - 10;
print "@ans";

__END__

=head1 NAME

Квадратные уравнения. Теорема Виета

=head1 DESCRIPTION

Найдите корни квадратного уравнения:  3(x2+8)−4x=9x+10

=cut
