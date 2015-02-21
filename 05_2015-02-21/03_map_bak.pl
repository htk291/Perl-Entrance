#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

&main() unless caller;

sub main {
    my @files = qw/foo.pl bar.pm baz.rb qux.py/;
    my @maped = map_bak(@files);
    print Dumper grep_pl_and_pm(@maped);
}

sub map_bak {
    my @arg = @_;
    return map { "$_.bak" } @arg;
}

sub grep_pl_and_pm {
    my @arg = @_;
    return grep { $_ =~ /\.(pm|pl)/ } @arg;
}

