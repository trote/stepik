#!/usr/bin/perl -w

use warnings;
use strict;
use LWP::Simple;

my $base_url = 'https://stepic.org/media/attachments/course67/3.6.3/';
my $url = $ARGV[0];
my $content = get $url or die "Couldn't get $url";
until ( $content =~ /^We/) {
    $url = $base_url . $content;
    $content = get $url or die "Couldn't get $url";
}
print $content;

__END__

=head1 NAME

Установка дополнительных модулей

=head1 DESCRIPTION

Имеется набор файлов, каждый из которых, кроме последнего, содержит имя следующего файла.
Первое слово в тексте последнего файла: "We".

Скачайте предложенный файл. В нём содержится ссылка на первый файл из этого набора. 

Все файлы располагаются в каталоге по адресу:
https://stepic.org/media/attachments/course67/3.6.3/

Загрузите содержимое ﻿последнего файла из набора, как ответ на это задание.

=cut
