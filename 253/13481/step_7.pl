#!/usr/bin/perl -w

use warnings;
use strict;

my %hex;
$hex{'0000'} = '0';
$hex{'0001'} = '1';
$hex{'0010'} = '2';
$hex{'0011'} = '3';
$hex{'0100'} = '4';
$hex{'0101'} = '5';
$hex{'0110'} = '6';
$hex{'0111'} = '7';
$hex{'1000'} = '8';
$hex{'1001'} = '9';
$hex{'1010'} = 'A';
$hex{'1011'} = 'B';
$hex{'1100'} = 'C';
$hex{'1101'} = 'D';
$hex{'1110'} = 'E';
$hex{'1111'} = 'F';

chomp(my $bin = <>);
my $hex;
$bin = '0' x (4 - length($bin) % 4) . $bin;
my @arr = $bin =~ /(\d{4})/g;
$hex .= $hex{$_} for @arr;
$hex =~ s/^0+//s;
print "$hex\n";

__END__

=head1 NAME

Бинарные числа и логические операции

=head1 DESCRIPTION

Переведите число 11010101 из двоичной системы счисления в шестнадцатеричную

=cut
