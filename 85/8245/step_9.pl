#!/usr/bin/perl -w

use warnings;
use strict;

my $var1 = (sqrt(11) + 4) / 3;
my $var2 = 0.1 ** -1 / sqrt(16);

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
