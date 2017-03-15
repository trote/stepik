#!/usr/bin/perl -w

use warnings;
use strict;

sub fib {
    my $n = shift;

    my $sqrt_5 = sqrt 5;
    ( ((1 + $sqrt_5) / 2) ** $n - ((1 - $sqrt_5) / 2) ** $n ) / $sqrt_5;
}

print "fib(20) = ", fib(20), "\n";
print "fib(50) = ", fib(50), "\n";
print "fib(100) = ", fib(100), "\n";
print "fib(1000) = ", fib(1000), "\n";

__END__

=head1 NAME

Числа Фибоначчи

=head1 DESCRIPTION

=cut
