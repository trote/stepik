#!/usr/bin/perl -w

use warnings;
use strict;

my @str;
chomp($str[0] = <>);
chomp($str[1] = <>);
chomp($str[2] = <>);
chomp($str[3] = <>);

eval "\$str[2] =~ tr/$str[0]/$str[1]/";
eval "\$str[3] =~ tr/$str[1]/$str[0]/";

print join "\n", @str[2..3];

__END__

=head1 NAME

Задачи по материалам недели

=head1 DESCRIPTION

Дополнительная

В какой-то момент в Институте биоинформатики биологи перестали понимать, что говорят информатики: они говорили каким-то странным набором звуков. 

В какой-то момент один из биологов раскрыл секрет информатиков: они использовали при общении подстановочный шифр, т.е. заменяли каждый символ исходного сообщения на соответствующий ему другой символ. Биологи раздобыли ключ к шифру и теперь нуждаются в помощи: 

Напишите программу, которая умеет шифровать и расшифровывать шифр подстановки. Программа принимает на вход две строки одинаковой длины, на первой строке записаны символы исходного алфавита, на второй строке — символы конечного алфавита, после чего идёт строка, которую нужно зашифровать переданным ключом, и ещё одна строка, которую нужно расшифровать.

Пусть, например, на вход программе передано:
abcd
*d%#
abacabadaba
#*%*d*%

Это значит, что символ a исходного сообщения заменяется на символ * в шифре, b заменяется на d, c — на % и d — на #.
Нужно зашифровать строку abacabadaba и расшифровать строку #*%*d*% с помощью этого шифра. Получаем следующие строки, которые и передаём на вывод программы:
*d*%*d*#*d*
dacabac

Sample Input 1:

abcd
*d%#
abacabadaba
#*%*d*%

Sample Output 1:

*d*%*d*#*d*
dacabac

Sample Input 2:

dcba
badc
dcba
badc

Sample Output 2:

badc
dcba

=cut