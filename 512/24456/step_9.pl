#!/usr/bin/perl -w

use warnings;
use strict;

my $fib;

$fib = sub {
    if ( $_[0] <= 2 ) {
        1
    } else {
        $fib->($_[0] - 1) + $fib->($_[0] - 2)
    }
};

print $fib->(31);

__END__

=head1 NAME

Введение

=head1 DESCRIPTION

Чтобы мы могли убедиться в том, что вы действительно установили интерпретатор, исполните построчно в интерпретаторе Python следующий код:

fib = lambda x : 1 if x <= 2 else fib(x - 1) + fib(x - 2)
fib(31)

Напишите число, которое вывелось вам на экран

=cut
