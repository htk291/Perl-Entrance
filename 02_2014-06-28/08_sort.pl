#!/usr/bin/env perl
use strict;
use warnings;

my @array;
for my $i (0..2) {
    chomp($array[$i] = <STDIN>);
    #push @array, scalar <STDIN>;
}

# print sort @array;
@array = sort { $a cmp $b } @array;
print "@array\n";
