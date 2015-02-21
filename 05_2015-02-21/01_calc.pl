#!/usr/bin/env perl
use strict;
use warnings;
use Data::Dumper;

&main() unless caller;

sub main {
    print 'x >>';
    chomp(my $x = <STDIN>);

    print 'y >>';
    chomp(my $y = <STDIN>);

    my $result = calc($x, $y);
    print "argument must use number\n" unless $result;

    print Dumper $result;
}

sub calc {
    for my $v (@_) {
        return unless $v =~ /\d/;
    }
    my ($x, $y) = @_;

    my $hash = {};
    $hash->{add} = $x + $y;
    $hash->{sub} = $x - $y;
    $hash->{mul} = $x * $y;
    $hash->{div} = $x / $y;
    $hash->{mod} = $x % $y;

    return $hash;
}
