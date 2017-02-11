#!/usr/bin/perl -w

use warnings;
use strict;

chomp(my $n = <STDIN>);
my $text = "You have chosen a ";
if ( $n == 1 ) {
    $text .= "square";
} elsif ( $n == 2 ) {
    $text .= "circle";
} elsif ( $n == 3 ) {
    $text .= "triangle";
} elsif ( $n == 4 ) {
    $text .= "rhombus";
} else {
    $text = "There is no such shape!";
}

print $text;

__END__

=head1 NAME

Shape

=head1 DESCRIPTION

Write a program, which reads the number of the shape (1 – square, 2 – circle, 3 – triangle, 4 – rhombus) and prints the text "You have chosen a square" (or circle, or triangle, or rhombus, depending on the number). If it is a number, which doesn't correspond to any of the listed shapes, the program should output: "There is no such shape!".

Note: output text should exactly match the sample! Including letters case and location of spaces.

Sample Input:

1

Sample Output:

You have chosen a square

=cut
