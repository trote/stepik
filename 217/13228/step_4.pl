#!/usr/bin/perl -w

use warnings;
use strict;

sub fib_recursive {
    my $n = shift;

    if ( $n <= 1 ) {
        $n
    } else {
        fib_recursive($n - 1) + fib_recursive($n - 2);
    }
}

print "fib(20) = ", fib_recursive(20), "\n";

__END__

=head1 NAME

Числа Фибоначчи

=head1 DESCRIPTION

=cut
