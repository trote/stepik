#!/usr/bin/perl -w

use warnings;
use strict;

while ( <> ) {
    chomp;
    next if $_ < 10;
    last if $_ > 100;
    print $_, "\n";
}

__END__

=head1 NAME

Операторы break, continue

=head1 DESCRIPTION

Напишите программу, которая считывает целые числа с консоли по одному числу в строке.

Для каждого введённого числа проверить:
если число меньше 10, то пропускаем это число;
если число больше 100, то прекращаем считывать числа;
в остальных случаях вывести это число обратно на консоль в отдельной строке.

Sample Input 1:

12
4
2
58
112

Sample Output 1:

12
58

Sample Input 2:

101

Sample Output 2:

Sample Input 3:

1
2
102

Sample Output 3:

=cut
