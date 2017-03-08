#!/usr/bin/perl -w

use warnings;
use strict;
use Math::Cephes::Fraction qw(fract);

my $f = fract(1.2 * 10, 10)->rsub(fract(5, 6));

print $f->as_mixed_string;

__END__

=head1 NAME

Десятичные дроби. Связь с обыкновенными дробями.

=head1 DESCRIPTION

Вычислите: 1,2−56

=cut
