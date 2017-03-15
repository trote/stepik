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

print max(2 + 5 + 1, 1 + 2 + 6, 1 + 1 + 3, 3 + 1 + 1, 1 + 1 + 1);

__END__

=head1 NAME

Тест по модулю 1

=head1 DESCRIPTION

Определите степень многочлена: 3a2b5c−13ab2c6+65abc3+27a3bc+22abc3a2b5c−13ab2c6+65abc3+27a3bc+22abc 

=cut
