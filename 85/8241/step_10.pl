#!/usr/bin/perl -w

use warnings;
use strict;

sub max {
    my $max = shift;

    for ( @_ ) {
        $max = $_ if $_ > $max;
    }    
    $max;
}

print max(3+4+2, 9+2, 3+10+2, 7+3);

__END__

=head1 NAME

Одночлен и многочлен. Формулы сокращенного умножения.

=head1 DESCRIPTION

Найдите степень многочлена: 34a3b4c2+12a9b2−13x3a10c2+8c7d3

=cut
