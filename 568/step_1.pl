#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $str = <STDIN>);
print scalar reverse $str;

__END__

=head1 NAME

Reversing

=head1 DESCRIPTION

Write a program that reads a three digit number, calculates the new number by reversing its digits, and outputs a new number.

Sample Input:

287

Sample Output:

782

=cut
