#!/usr/bin/perl -w

use warnings;
use strict;
use Math::Cephes::Fraction qw(fract);

my $f = fract(3 * 8 + 1, 8)->rdiv(fract(2 * 2 + 1, 2))->radd(fract(1, 2))->rdiv(fract(1 * 4 + 3, 4));

print $f->n / $f->d;

__END__

=head1 NAME

Тест по модулю 1

=head1 DESCRIPTION

Вычислить: (318:212+12):134(318:212+12):134

=cut
