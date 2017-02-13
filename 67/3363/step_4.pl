#!/usr/bin/perl -w

use warnings;
use strict;

my $file_input = $ARGV[0];
my $file_output = $ARGV[1];

open my $fi, '<', $file_input or die "Could not open file '$file_input' $!\n";
open my $fo, '>', $file_output or die "Could not write to '$file_output': $!\n";
my @data;
while ( <$fi> ) {
    my @student = split ';';
    push @data, [@student[1 .. $#student]];
}
close $fi;

my @avg;
for my $data_for_student ( @data ) {
    my $acc = 0;
    for my $i ( 0 .. $#$data_for_student ) {
        $acc += $data_for_student->[$i];
        $avg[$i] += $data_for_student->[$i];
    }
    print $fo $acc / @data, "\n";
}

$_ /= @data for @avg;

print $fo "@avg";
close $fo;

__END__

=head1 NAME

Файловый ввод/вывод

=head1 DESCRIPTION

Имеется файл с данными по успеваемости абитуриентов. Он представляет из себя набор строк, где в каждой строке записана следующая информация:

Фамилия;Оценка_по_математике;Оценка_по_физике;Оценка_по_русскому_языку

Поля внутри строки разделены точкой с запятой, оценки — целые числа.

Напишите программу, которая считывает файл с подобной структурой и для каждого абитуриента выводит его среднюю оценку по этим трём предметам на отдельной строке, соответствующей этому абитуриенту.

Также в конце файла, на отдельной строке, через пробел запишите средние баллы по математике, физике и русскому языку по всем абитуриентам:

Примечание. Для разбиения строки на части по символу ';' можно использовать метод split следующим образом: 

print('First;Second-1 Second-2;Third'.split(';'))
# ['First', 'Second-1 Second-2', 'Third']

Sample Input:

Петров;85;92;78
Сидоров;100;88;94
Иванов;58;72;85

Sample Output:

85.0
94.0
71.666666667
81.0 84.0 85.666666667

=cut
