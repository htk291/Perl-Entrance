#!/usr/bin/env perl
use strict;
use warnings;
use List::Util qw/ reduce sum /;

print +(sum 1..100) . $/;

__END__

print +(reduce {$a + $b} 1..100) . $/;

__END__

my @array = 1..100;

my $sum = reduce {$a + $b} @array;
print $sum . $/;

__END__

my @array = 1..100;
my $sum = 0;

for my $i (@array) {
    $sum += $i;
}

print $sum . $/;
