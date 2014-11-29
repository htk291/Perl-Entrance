#!/usr/bin/env perl
use strict;
use warnings;
use List::Util qw/ reduce /;

&main unless caller;

sub main {
    print "add >> ";
    print add(4, 5) . $/;

    print "min >> ";
    print min(4, 5) . $/;

    print "mul >> ";
    print mul(4, 5) . $/;

    print "div >> ";
    print div(4, 5) . $/;

    print "addx >> ";
    print addx(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) . $/;
}

sub add {
    my ($left, $right) = @_;
    return $left + $right;
}

sub min {
    my ($left, $right) = @_;
    return $left - $right;
}

sub mul {
    my ($left, $right) = @_;
    return $left * $right;
}

sub div {
    my ($left, $right) = @_;
    return $left / $right;
}

sub addx {
    return reduce { $a + $b } @_;
}

