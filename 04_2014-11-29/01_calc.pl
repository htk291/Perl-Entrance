#!/usr/bin/env perl
use strict;
use warnings;

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

