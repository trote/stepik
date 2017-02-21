#!/usr/bin/perl -w

use warnings;
use strict;
use Math::BigInt;

sub dec2bin {
    my ( $dec_str ) = @_;
    my @bin;
    my $x = Math::BigInt->new($dec_str);
    my $rem;
    while ( $x->bcmp(1) > 0 ) {
        ( $x, $rem ) = $x->bdiv(2);
        unshift @bin, $rem;
    }
    unshift @bin, $x;
    my $bin = join '', @bin;
    $bin =~ s/^0+//s;
    $bin;
}

chomp(my $dec = <>);
my $bin = dec2bin($dec);
print "$bin\n";

__END__

=head1 NAME

Бинарные числа и логические операции

=head1 DESCRIPTION

У вас есть следующее десятичное число:

238477477438883746538834683874563984984563846838387456388387772112300304903746539213685

Укажите 5 последних (младших) разрядов, которые получатся после перевода этого числа в двоичную форму

=cut
