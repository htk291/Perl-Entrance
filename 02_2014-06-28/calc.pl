#!/usr/bin/env perl
use strict;
use warnings;

chomp (my $num1 = <STDIN>);
chomp (my $num2 = <STDIN>);

my $add    = $num1 + $num2;
my $min    = $num1 - $num2;
my $multi  = $num1 * $num2;
my $devide = $num1 / $num2;

print "＋ : $add\n";
print "ー : $min\n";
print "✕  : $multi\n";
print "／ : $devide\n";



