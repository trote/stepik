#!/usr/bin/perl -w

use warnings;
use strict;

sub fib_array {
    my $n = shift;

    my @arr = (0, 1);
    $arr[$_] = $arr[$_ - 1] + $arr[$_ - 2] for 2 .. $n;
    $arr[$n];
}

print "fib(20) = ", fib_array(20), "\n";
print "fib(50) = ", fib_array(50), "\n";
print "fib(100) = ", fib_array(100), "\n";
print "fib(1000) = ", fib_array(1000), "\n";

__END__

=head1 NAME

Числа Фибоначчи

=head1 DESCRIPTION

=cut
