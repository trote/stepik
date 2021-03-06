#!/usr/bin/perl -w

use warnings;
use strict;

my $file_input = $ARGV[0];
my $file_output = $ARGV[1];

open my $fi, '<', $file_input or die "Could not open file '$file_input' $!\n";
open my $fo, '>', $file_output or die "Could not write to '$file_output': $!\n";
while ( <$fi> ) {
    print $fo $1 x $2 while /(\D)(\d+)/g;
    print $fo "\n";
}
close $fi;
close $fo;

__END__

=head1 NAME

Файловый ввод/вывод

=head1 DESCRIPTION

На прошлой неделе мы сжимали строки, используя кодирование повторов. Теперь нашей задачей будет восстановление исходной строки обратно.

Напишите программу, которая считывает из файла строку, соответствующую тексту, сжатому с помощью кодирования повторов, и производит обратную операцию, получая исходный текст.

Запишите полученный текст в файл и прикрепите его, как ответ на это задание.

В исходном тексте не встречаются цифры, так что код однозначно интерпретируем.

Примечание. Это первое задание типа Dataset Quiz. В таких заданиях после нажатия "Start Quiz" у вас появляется ссылка "download your dataset". Используйте эту ссылку для того, чтобы загрузить файл со входными данными к себе на компьютер. Запустите вашу программу, используя этот файл в качестве входных данных. Выходной файл, который при этом у вас получится, надо отправить в качестве ответа на эту задачу. 

Sample Input:

a3b4c2e10b1

Sample Output:

aaabbbbcceeeeeeeeeeb

=cut
