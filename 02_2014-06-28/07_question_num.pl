#!/usr/bin/env perl
use strict;
use warnings;

my $answer = 351;
chomp( my $input = <STDIN> );

if ($input == $answer) {
    print "yes\n";
} elsif (abs($answer - $input) > 5) {
    print "near\n";
} elsif ($input > $answer) {
    print "too big\n";
} elsif ($input < $answer) {
    print "too small\n";
}

