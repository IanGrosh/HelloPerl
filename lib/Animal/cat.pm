package Animal::Cat;

use strict;
use warnings;

sub new
{
    my $class = shift;
    my $self = {
        name => shift,
        owner => shift        
    };
    bless $self, $class;
    return $self;
}

sub setName
{
    my ($self) = @_;
    return $self->{name};
}

sub getName 
{
    my ($self, $name) = @_;
    $self->{name} = $name;
    return $self->{name};
}

sub getSound 
{
    my ($self) = @_;
    return $self->{name}, "says Meow.";
}

1;