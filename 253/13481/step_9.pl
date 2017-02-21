#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $bin = <>);
my @num = reverse split //, $bin;
my $dec = 0;
for ( my $i = 0; $i < @num; $i++ ) {
    $dec += $num[$i] * 2 ** $i;
}
$dec =~ s/^0+//s;
print "$dec\n";

__END__

=head1 NAME

Бинарные числа и логические операции

=head1 DESCRIPTION

Преобразуйте из двоичной системы счисления в десятичную число 110101

=cut
