#!/usr/bin/env perl
use strict;
use warnings;

chomp (my $num = <STDIN>);
for my $i (1 .. abs $num) {
    print "Fizz" if ($i % 3 == 0);
    print "Buzz" if ($i % 5 == 0);
    print $i     if ($i % 3 != 0 && $i % 5 != 0);
    print $/;
}
