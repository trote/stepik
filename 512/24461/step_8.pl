#!/usr/bin/perl -w

use warnings;
use strict;

package MoneyBox;

use Moose;

has 'capacity' => (
    is => 'rw',
    isa => 'Num',
    required => 1,
);

has 'value' => (
    is => 'rw',
    isa => 'Num',
    default   => 0,
    writer => '_set_value',
);

around BUILDARGS => sub {
    my $orig  = shift;
    my $class = shift;

    if ( @_ == 1 && !ref $_[0] ) {
        return $class->$orig( capacity => $_[0] );
    } else {
        return $class->$orig(@_);
    }
};

sub BUILD {
    my $self = shift;
    my $args = shift;

    $self->capacity($args->{ capacity });
}

sub add {
    my ( $self, $v ) = @_;

    $self->_set_value($self->value + $v);
}

sub can_add {
    my ( $self, $v ) = @_;

    return 1 if $self->value + $v <= $self->capacity;
    return 0;
}

__END__

=head1 NAME

Введение в классы

=head1 DESCRIPTION

Реализуйте класс MoneyBox, для работы с виртуальной копилкой. 

Каждая копилка имеет ограниченную вместимость, которая выражается целым числом – количеством монет, которые можно положить в копилку. Класс должен поддерживать информацию о количестве монет в копилке, предоставлять возможность добавлять монеты в копилку и узнавать, можно ли добавить в копилку ещё какое-то количество монет, не превышая ее вместимость.

Класс должен иметь следующий вид

class MoneyBox:
    def __init__(self, capacity):
        # конструктор с аргументом – вместимость копилки

    def can_add(self, v):
        # True, если можно добавить v монет, False иначе

    def add(self, v):
        # положить v монет в копилку
При создании копилки, число монет в ней равно 0.
Примечание:
Гарантируется, что метод add(self, v) будет вызываться только если can_add(self, v) – True﻿.

=cut
