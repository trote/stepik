#!/usr/bin/perl -w

use warnings;
use strict;
use Math::Cephes::Fraction qw(fract);

my $f = fract(0.2 * 10, 10);

print $f->as_mixed_string;

__END__

=head1 NAME

Десятичные дроби. Связь с обыкновенными дробями.

=head1 DESCRIPTION

Переведите десятичную дробь 0,20,2 в обыкновенную.

=cut
