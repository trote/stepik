#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $str = <>);
my @nums = split /\s+/, $str;

@nums = sort { $a <=> $b } @nums;
my @result = ();

if ( @nums > 1 ) {
    my $i = 1;
    my $last_num = $nums[0];
    for ( @nums[1 .. $#nums] ) {
        if ( $_ == $last_num ) {
            next if $i > 1;
            push @result, $last_num if ++$i > 1; 
        } else {
            $i = 1;
            $last_num = $_;
        }
    }
}

print "@result";

__END__

=head1 NAME

Списки

=head1 DESCRIPTION

Напишите программу, которая принимает на вход список чисел в одной строке и выводит на экран в одну строку значения, которые повторяются в нём более одного раза.

Для решения задачи может пригодиться метод sort списка.

Выводимые числа не должны повторяться, порядок их вывода может быть произвольным.

Sample Input 1:

4 8 0 3 4 2 0 3

Sample Output 1:

0 3 4

Sample Input 2:

10

Sample Output 2:

Sample Input 3:

1 1 2 2 3 3

Sample Output 3:

1 2 3

Sample Input 4:

1 1 1 1 1 2 2 2

Sample Output 4:

1 2

=cut
