#!/usr/bin/perl -w

use warnings;
use strict;

my $file_input = $ARGV[0];
open my $fi, '<', $file_input or die "Could not open file '$file_input' $!\n";
my %hash;
while ( <$fi> ) {
    chomp;
    my @words = map { lc $_ } split /\s+/;
    for my $word ( @words ) {
        $hash{$word}++;
    }
}
close $fi;

my $top_word;
for my $word ( sort keys %hash ) {
    $top_word = $word if !defined $top_word || $hash{$word} > $hash{$top_word};
}

print "$top_word $hash{$top_word}"

__END__

=head1 NAME

Файловый ввод/вывод

=head1 DESCRIPTION

Недавно мы считали для каждого слова количество его вхождений в строку. Но на все слова может быть не так интересно смотреть, как, например, на наиболее часто используемые.

Напишите программу, которая считывает текст из файла (в файле может быть больше одной строки) и выводит самое частое слово в этом тексте и через пробел то, сколько раз оно встретилось. Если таких слов несколько, вывести лексикографически первое (можно использовать оператор < для строк).

Слова, написанные в разных регистрах, считаются одинаковыми.

Sample Input:

abc a bCd bC AbC BC BCD bcd ABC

Sample Output:

abc 3

=cut
