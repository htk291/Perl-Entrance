#!/usr/bin/env perl
use strict;
use warnings;

for my $i (1..100) {
    print "Fizz" if ($i % 3 == 0);
    print "Buzz" if ($i % 5 == 0);
    print $i     if ($i % 3 != 0 && $i % 5 != 0);
    print "\n";
}
