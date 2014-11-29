#!/usr/bin/env perl
use strict;
use warnings;

while (chomp(my $input = <STDIN>)) {
    last if $input =~ /^0$/;
    print "Find Perl!\n" if $input =~ /[pP]erl/;
    print "Find Python!\n" if $input =~ /python/i;
    print "Love Programming!\n" if $input =~ /perl|python|ruby/;
}
