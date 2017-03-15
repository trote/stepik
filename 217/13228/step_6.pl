#!/usr/bin/perl -w

use warnings;
use strict;

sub fib {
    my $n = shift;

    my ($a, $b) = (0, 1);
    for ( 1 .. $n ) {
        ($a, $b) = ($b, $a + $b);
    }
    $a;
}

print "fib(2) = ", fib(2), "\n";
print "fib(20) = ", fib(20), "\n";
print "fib(50) = ", fib(50), "\n";
print "fib(100) = ", fib(100), "\n";
print "fib(1000) = ", fib(1000), "\n";

__END__

=head1 NAME

Числа Фибоначчи

=head1 DESCRIPTION

Задача на программирование: небольшое число Фибоначчи



Дано целое число 1≤n≤401≤n≤40, необходимо вычислить nn-е число Фибоначчи (напомним, что F0=0F0=0, F1=1F1=1 и Fn=Fn−1+Fn−2Fn=Fn−1+Fn−2 при n≥2n≥2).

Sample Input:

3

Sample Output:

2

=cut
