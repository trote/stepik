
#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $num1 = <>);
chomp(my $num2 = <>);
chomp(my $num3 = <>);

my @nums = sort {$a <=> $b} ($num1, $num2, $num3);

print join"\n", @nums[-1, 0, 1];

__END__

=head1 NAME

Задачи по материалам недели

=head1 DESCRIPTION

Напишите программу, которая получает на вход три целых числа, по одному числу в строке, и выводит на консоль в три строки сначала максимальное, потом минимальное, после чего оставшееся число.

На ввод могут подаваться и повторяющиеся числа.

Sample Input 1:

8
2
14

Sample Output 1:

14
2
8

Sample Input 2:

23
23
21

Sample Output 2:

23
21
23

=cut
