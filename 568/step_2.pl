#!/usr/bin/perl -w

use warnings;
use strict;

my ($str, $a, $b, $c, $d) = split /\s/, <>;
my @chars = split //, $str;

print @chars[$a..$b], ' ', @chars[$c..$d] 

__END__

=head1 NAME

The slice of string

=head1 DESCRIPTION

Given: A string s of length at most 200 letters and four integers a, b, c and d.

Return: The slice of this string from indices a through b and c through d (with space in between), inclusively.

Sample Input:

abcdefghijklmnopqrstuvwxyz 2 5 8 15

Sample Output:

cdef ijklmnop

=cut
