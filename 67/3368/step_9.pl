#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $str = <>);

my $sum;
map { $sum += $_ } split /\s+/, $str;
print $sum;

__END__

=head1 NAME

Списки

=head1 DESCRIPTION

Напишите программу, на вход которой подается одна строка с целыми числами. Программа должна вывести сумму этих чисел.

Используйте метод split строки. 

Sample Input:

4 -1 9 3

Sample Output:

15

=cut
