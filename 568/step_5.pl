#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $n = <STDIN>);
my $text = "move ";
if ( $n == 1 ) {
    $text .= "up";
} elsif ( $n == 2 ) {
    $text .= "down";
} elsif ( $n == 3 ) {
    $text .= "left";
} elsif ( $n == 4 ) {
    $text = "right";
} elsif ( $n == 0 ) {
    $text = "do not move";
} else {
    $text = "error!"
}

print $text;

__END__

=head1 NAME

Direction

=head1 DESCRIPTION

Write a program, which reads the number of direction (1 – up, 2 – down, 3 – left, 4 – right, 0 – stay) and outputs the text «move up» (or «move down», or «move left», or «move right», or «do not move» depending on the entered number). If it is a number that does not belong to any of the listed directions, the program should output: «error!»

Note: the output text should exactly match the sample! Including letters case and location of spaces.

Sample Input:

1

Sample Output:

move up

=cut
