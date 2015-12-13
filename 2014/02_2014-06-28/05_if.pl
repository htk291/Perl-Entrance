#!/usr/bin/env perl
use strict;
use warnings;

my $hoge = 10;
if ($hoge == 10) {
    print "hoge == 10\n";
}

my $piyo = 1_0;     # これもokらしい
if ($piyo eq "10") {
    print "piyo eq 10\n";
}

my $fuga = "10aaaa";
if ($fuga == 10) {
    print "fuga == 10\n";
}

my $foo = "10aaaa";
if ($foo eq 10) {
    print "foo eq 10\n";
}
