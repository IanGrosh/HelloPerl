use strict;
use warnings;
use diagnostics;
# say prints a line followed by a newline
use feature 'say';
# Use a Perl version of switch called given when
use feature "switch";
# Use Perl version 5.14
use v5.14;

use lib 'lib';
use Animal::Cat;

sub fac #factorial
{
    my ($num) = @_;
    if ($num == 0)
    {
        return 0;
    }
    elsif ($num == 1)
    {
        return 1;
    }
    else
    {
        return $num * fac($num-1);
    }
} 


my $ans = fac($ARGV[0]);

say "here ya go: ", $ARGV[0], "! = ", $ans;

#say "Hello World!";

my $guy = new Animal::Cat("Thunder","ME");
say $guy->getName();
$guy->setName("bob");
say $guy->getName();

#for (@ARGV)
#{
#    say $_;
#}

#say $ARGV[0];

