#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $x = <>);
chomp(my $h = <>);
chomp(my $m = <>);

my $time = $h*60 + $m + $x;
print join "\n", (int($time/60), $time - int($time/60)*60);

__END__

=head1 NAME

Переменные. Стандартный ввод/вывод

=head1 DESCRIPTION

Катя узнала, что ей для сна надо XX минут. В отличие от Коли, Катя ложится спать после полуночи в HH часов и MM минут. Помогите Кате определить, на какое время ей поставить будильник, чтобы он прозвенел ровно через XX минут после того, как она ляжет спать.

На стандартный ввод, каждое в своей строке, подаются значения XX, HH и MM. Гарантируется, что Катя должна проснуться в тот же день, что и заснуть. Программа должна выводить время, на которое нужно поставить будильник: в первой строке часы, во второй — минуты.

Sample Input 1:

480
1
2

Sample Output 1:

9
2

Sample Input 2:

475
1
55

Sample Output 2:

9
50

=cut
