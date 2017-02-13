#!/usr/bin/perl -w

use warnings;
use strict;
use constant PI => (4 * atan2(1,1));

chomp(my $r = <>);

print 2 * PI * $r;

__END__

=head1 NAME

Модули, подключение модулей

=head1 DESCRIPTION

Напишите программу, которая подключает модуль math и, используя значение числа ππ из этого модуля, находит для переданного ей на стандартный ввод радиуса круга периметр этого круга и выводит его на стандартный вывод.

Sample Input:

10.0

Sample Output:

62.83185307179586

=cut
