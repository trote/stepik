#!/usr/bin/perl -w

use warnings;
use strict;

# x + 1 + x - 2 + x + 2 * (x + 1 + x - 2 + x) = 24
# 3 * 3 * x + 3 * -1 = 24
# 9 * x = 27

my $x = 27 / 9;
my $gunilla = $x;
my $krister = $x + 1;
my $malysh = $x - 2;
my $karlson = 2 * ($gunilla + $krister + $malysh);

print sort { $a <=> $b } ($gunilla, $krister, $malysh, $karlson);

__END__

=head1 NAME

Линейные уравнения

=head1 DESCRIPTION

Решите задачу:

Малыш, Карлсон, Гунилла и Кристер ели булочки с корицей. Кристер съел на 1 булочку больше, а Малыш на 2 булочки меньше, чем Гунилла. Карлсон съел в 2 раза больше, чем все они втроем. Сколько булочек съел каждый, если всего Фрекен Бок испекла 24 булочки с корицей?

Ответ запишите по возрастающей без пробелов и запятых*.

* Например, Малыш съел 5 булочек, Гунилла - 7, Кристер  - 8, Карлсон - 20

Тогда ответ будет выглядеть так: 57820

=cut