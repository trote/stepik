#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $n = <>);
my @arr;
for my $i ( 1 .. $n ) {
    for my $j ( 1 .. $n ) {
        $arr[$i-1][$j-1] = 0;
    }
}
my @path = ([0, 1], [1, 0], [0, -1], [-1, 0]);
my ( $x, $y, $d ) = (0, 0, 0);
for ( 1 .. $n**2 ) {
    $arr[$x][$y] = $_;
    if ( !defined $arr[$x+$path[$d][0]][$y+$path[$d][1]] || $arr[$x+$path[$d][0]][$y+$path[$d][1]] != 0 ) {
        $d = ++$d % @path;
    }
    $x += $path[$d][0];
    $y += $path[$d][1];
}

print "@$_\n" for @arr;

__END__

=head1 NAME

Задачи по материалам недели

=head1 DESCRIPTION

Выведите таблицу размером n×nn×n, заполненную числами от 11 до n2n2 по спирали, выходящей из левого верхнего угла и закрученной по часовой стрелке, как показано в примере (здесь n=5n=5):

Sample Input:

5

Sample Output:

1 2 3 4 5
16 17 18 19 6
15 24 25 20 7
14 23 22 21 8
13 12 11 10 9

=cut
