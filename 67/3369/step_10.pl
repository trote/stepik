#!/usr/bin/perl -w

use warnings;
use strict;

my @arr;
my @result;
chomp(my $str = <>);
while ( $str ne 'end' ) {
    push @arr, [split /\s+/, $str];
    push @result, [(0) x split /\s+/, $str];
    chomp($str = <>);
}

for my $i ( 0 .. $#arr ) {
    for my $j ( 0 .. $#{$arr[$i]} ) {
        my ( $n, $s, $w, $e );
        $n = $arr[$i-1][$j];
        if ( $i + 1 > $#arr ) {
            $s = $arr[0][$j];
        } else {
            $s = $arr[$i+1][$j];
        }
        $w = $arr[$i][$j-1];
        if ( $j + 1 > $#{$arr[$i]} ) {
            $e = $arr[$i][0];
        } else {
            $e = $arr[$i][$j+1];
        }

        $result[$i][$j] = $n + $s + $w + $e;
    }
    print "@{$result[$i]}\n";
}

__END__

=head1 NAME

Задачи по материалам недели

=head1 DESCRIPTION

Напишите программу, на вход которой подаётся прямоугольная матрица в виде последовательности строк, заканчивающихся строкой, содержащей только строку "end" (без кавычек)

Программа должна вывести матрицу того же размера, у которой каждый элемент в позиции i, j равен сумме элементов первой матрицы на позициях (i-1, j), (i+1, j), (i, j-1), (i, j+1). У крайних символов соседний элемент находится с противоположной стороны матрицы.

В случае одной строки/столбца элемент сам себе является соседом по соответствующему направлению.

Sample Input 1:

9 5 3
0 7 -1
-5 2 9
end

Sample Output 1:

3 21 22
10 6 19
20 16 -1

Sample Input 2:

1
end

Sample Output 2:

4

=cut