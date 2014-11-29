#!/usr/bin/env perl
use strict;
use warnings;

print "num >> ";
chomp (my $input = <STDIN>);

print "even" . $/ if ($input % 2 == 0);
print "odd"  . $/ if ($input % 2 != 0);
