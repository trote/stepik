#!/usr/bin/perl -w

use warnings;
use strict;

my %hex;
$hex{'0'} = 0;
$hex{'1'} = 1;
$hex{'2'} = 2;
$hex{'3'} = 3;
$hex{'4'} = 4;
$hex{'5'} = 5;
$hex{'6'} = 6;
$hex{'7'} = 7;
$hex{'8'} = 8;
$hex{'9'} = 9;
$hex{'A'} = 10;
$hex{'B'} = 11;
$hex{'C'} = 12;
$hex{'D'} = 13;
$hex{'E'} = 14;
$hex{'F'} = 15;

chomp(my $hex = <>);
$hex =~ /0x([\dA-F]+)/gi;
my @num = reverse split //, $1;
my $dec = 0;
for ( my $i = 0; $i < @num; $i++ ) {
    $dec += $hex{$num[$i]} * 16 ** $i;
}
$dec =~ s/^0+//s;
print "$dec\n";

__END__

=head1 NAME

Бинарные числа и логические операции

=head1 DESCRIPTION

Преобразуйте из шестнадцатеричной системы счисления в десятичную число 0xB11924E1

=cut
