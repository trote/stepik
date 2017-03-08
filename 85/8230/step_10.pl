#!/usr/bin/perl -w

use warnings;
use strict;
use Math::Cephes::Fraction qw(fract);

my $f = fract(0.25 * 100, 100)->radd(fract(1, 8));

print $f->n / $f->d;

__END__

=head1 NAME

Десятичные дроби. Связь с обыкновенными дробями.

=head1 DESCRIPTION

Сложите:  0,25+18

=cut
