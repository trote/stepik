#!/usr/bin/perl -w

use warnings;
use strict;

my $var1 = 7 ** (1 - 2 + 3) + 10 ** (-2 * -2 - 3);
my $var2 = 2 ** 5 + sqrt(65) * sqrt(5) * 5 ** 2 / sqrt(13) - 10 ** 2 + 2 * 2 ** 0;

if ( $var1 > $var2 ) {
    print ">";
} elsif ( $var1 < $var2 ) {
    print "<";
} else {
    print "=";
}

__END__

=head1 NAME

Тест по модулю 1

=head1 DESCRIPTION

Какой знак следует поставить между выражениями?

(11−−√+4)÷3   и   (0,1)−1⋅116−−√

=cut
