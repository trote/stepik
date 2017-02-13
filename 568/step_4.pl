#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $n = <STDIN>);
$n -= 3 while $n > 0;

print $n == 0 ? 'YES' : 'NO';

__END__

=head1 NAME

Division

=head1 DESCRIPTION

You are given an integer number of indefinite length. Check, whether this number divides by 3 or not, without using the remainder (%) operation.

Print "YES" if the number divides by 3 and "NO" if it doesn't.

Note: What happens, when you divide, say, 17 by 3? And then back.

Sample Input 1:

7

Sample Output 1:

NO

Sample Input 2:

43

Sample Output 2:

NO

Sample Input 3:

18

Sample Output 3:

YES

=cut
