#!/usr/bin/perl -w

use warnings;
use strict;

sub f {
    my ( $x ) = @_;

    if ( $x <= -2 ) {
        1 - ($x + 2) ** 2;
    } elsif ( $x > 2 ) {
        ($x - 2) ** 2 + 1;
    } else {
        -$x / 2;
    }
}

chomp(my $n = <>);
print f($n);

__END__

=head1 NAME

Функции

=head1 DESCRIPTION

Напишите функцию f(x), которая возвращает значение следующей функции, определённой на всей числовой прямой:

f(x)=⎧⎩⎨⎪⎪1−(x+2)2,−x2,(x−2)2+1,при x≤−2при −2<x≤2при 2<x
f(x)={1−(x+2)2,при x≤−2−x2,при −2<x≤2(x−2)2+1,при 2<x
Требуется реализовать только функцию, решение не должно осуществлять операций ввода-вывода.

Sample Input 1:

4.5

Sample Output 1:

7.25

Sample Input 2:

-4.5

Sample Output 2:

-5.25

Sample Input 3:

1

Sample Output 3:

-0.5

=cut
