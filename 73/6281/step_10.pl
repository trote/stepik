#!/usr/bin/perl -w

use warnings;
use strict;

print "Arguments are: \$1=$ARGV[0] \$2=$ARGV[1]";

__END__

=head1 NAME

Скрипты на bash: основы

=head1 DESCRIPTION

Вы можете скачать и изучить скрипт, который мы показали в видеофрагменте: arguments.sh.

Напишите скрипт на bash, который принимает на вход два аргумента и выводит на экран строку следующего вида:

Arguments are: $1=первый_аргумент $2=второй_аргумент

Например, если ваш скрипт называется ./script.sh, то при запуске его ./script.sh one two на экране должно появиться:

Arguments are: $1=one $2=two

а при запуске ./script.sh three four будет:

Arguments are: $1=three $2=four

=cut
