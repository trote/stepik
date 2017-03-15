#!/usr/bin/perl -w

use warnings;
use strict;

my $a = -1.5;
print sprintf "%.2f", ($a ** 2 + 6 * $a + 8 / $a + 12) * ($a ** 2 - 2 * $a) / ($a ** 2 - 4);

__END__

=head1 NAME

Алгебраические дроби

=head1 DESCRIPTION

Упростите выражение и найдите его значение при a=−1,5a=−1,5:

(a2+6a+8a+12)⋅1a2−4⋅(a2−2a)

=cut
