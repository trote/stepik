#!/usr/bin/perl -w

use warnings;
use strict;

my %hex;
$hex{'0'} = '0000';
$hex{'1'} = '0001';
$hex{'2'} = '0010';
$hex{'3'} = '0011';
$hex{'4'} = '0100';
$hex{'5'} = '0101';
$hex{'6'} = '0110';
$hex{'7'} = '0111';
$hex{'8'} = '1000';
$hex{'9'} = '1001';
$hex{'A'} = '1010';
$hex{'B'} = '1011';
$hex{'C'} = '1100';
$hex{'D'} = '1101';
$hex{'E'} = '1110';
$hex{'F'} = '1111';

sub remove_leading_zeros {
    my ( $n ) = @_;
    $n =~ s/^0+//s;
    $n;
}

sub nbit {
    my ( $bin, $n ) = @_;
    if ( length $bin > $n ) {
        $bin = substr($bin, length($bin) - $n);
    }
    remove_leading_zeros $bin;
}

sub dec2bin {
    my ( $dec ) = @_;
    my @bin;
    my $rem;
    while ( $dec > 1 ) {
        ( $dec, $rem ) = ( int($dec / 2), $dec % 2 );
        unshift @bin, $rem;
    }
    unshift @bin, $dec;
    my $bin = join '', @bin;
    remove_leading_zeros $bin;
}

sub bin2dec {
    my ( $bin, $n ) = @_;

    my $dec;
    my $sign = sign_bit($bin, $n);
    if ( $sign ) {
        $bin = nbit(sum_bin(invert($bin, $n-1), '1'), 15);
    }
    my @num = reverse split //, $bin;
    $dec = 0;
    for ( my $i = 0; $i < @num; $i++ ) {
        $dec += $num[$i] * 2 ** $i;
    }
    $dec = remove_leading_zeros $dec;
    $sign ? -$dec : $dec;
}

sub invert {
    my ( $bin, $n ) = @_;

    $bin = '0' x ($n - length $bin) . $bin if $n > length $bin;
    $bin = join '', map { $_ ? 0 : 1 } split //, $bin;
    remove_leading_zeros $bin;
}

sub sign_bit {
    my ( $bin, $n ) = @_;

    if ( length $bin < $n ) {
        0;
    } else {
        substr($bin, length($bin) - $n, 1);
    }
}

sub set_sign_bit {
    my ( $bin, $sign, $n ) = @_;

    $bin = $sign x ($n - length $bin) . $bin if $n > length $bin;
    remove_leading_zeros $bin;
}

sub hex2bin {
    my ( $hex ) = @_;

    my @arr = split //, $hex;
    my $bin;
    $bin .= $hex{$_} for @arr;
    remove_leading_zeros $bin;
}

sub sum_bin {
    my ( $a, $b ) = @_;

    my $first = length($a) - 1;
    my $second = length($b) - 1;
    my $result;
    my $carry = 0;

    while ( $first >= 0 or $second >= 0 ) {
        my $sum = $carry;
        if ( $first >= 0 ) { 
            $sum += substr($a, $first, 1);
            $first--;
        }
        if ( $second >= 0 ) {
            $sum += substr($b, $second, 1);
            $second--;
        }
        $carry = $sum >> 1;
        $sum = $sum & 1;
        $result .= ($sum == 0 ? '0' : '1');
    }
    $result .= '1' if $carry > 0;
    $result = reverse $result;
    $result;
}

sub convert {
    my ( $a ) = @_;
    
    $a = ~(-$a) + 1 if $a < 0;
    sprintf "%b", $a;
}

chomp(my $a = <>);
chomp(my $b = <>);

print bin2dec(sum_bin(dec2bin($a), dec2bin($b)), 16), "\n";

__END__

=head1 NAME

Бинарные числа и логические операции

=head1 DESCRIPTION

У вас есть следующее десятичное число:

Посчитайте сумму чисел 17233 и 21413, при условии что вы работаете со знаковыми 16 битными числами, представленными дополнением до 2.

=cut
