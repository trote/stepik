#!/usr/bin/perl -w

use warnings;
use strict;
use Math::BigInt;

my %oct;
$oct{'0'} = '000';
$oct{'1'} = '001';
$oct{'2'} = '010';
$oct{'3'} = '011';
$oct{'4'} = '100';
$oct{'5'} = '101';
$oct{'6'} = '110';
$oct{'7'} = '111';

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

sub bin2hex {
    my ( $bin_str ) = @_;
    my $hex;
    $bin_str = '0' x (4 - length($bin_str) % 4) . $bin_str;
    my @arr = $bin_str =~ /(\d{4})/g;
    $hex .= $hex{$_} for @arr;
    $hex =~ s/^0+//s;
    $hex;
}


sub oct2bin {
    my ( $oct_str ) = @_;

    my $bin;
    my @arr = split //, $oct_str;
    $bin .= $oct{$_} for @arr;
    $bin =~ s/^0+//s;
    $bin;
}

chomp(my $oct = <>);
print bin2hex(oct2bin($oct));
print "\n";

__END__

=head1 NAME

Бинарные числа и логические операции

=head1 DESCRIPTION

У вас есть следующее десятичное число:

238477477438883746538834683874563984984563846838387456388387772112300304903746539213685

Укажите 5 последних (младших) разрядов, которые получатся после перевода этого числа в двоичную форму

=cut
