#!/usr/bin/env perl
use strict;
use warnings;

&main() unless caller;

sub main {
    while (1) {
        print '>> ';
        chomp( my $foo = <STDIN> );
        last unless $foo;

        &calc_string($foo);
    }
}

sub calc_string {
    my $arg = shift;
    unless ( $arg =~ /^(\d+) ([+\-*\/\%]) (\d+)$/ ) {
        print "ERROR!!\n";
        return;
    }

    print ( $1 + $3."\n" ) if $2 eq '+';
    print ( $1 - $3."\n" ) if $2 eq '-';
    print ( $1 * $3."\n" ) if $2 eq '*';
    print ( $1 / $3."\n" ) if $2 eq '/';
    print ( $1 % $3."\n" ) if $2 eq '%';
}

__DATA__
my ($x, $op, $y) = $arg =~ /^(\d+) ([+\-*\/\%]) (\d+)$/;

print ( $x + $y."\n" ) if $op eq '+';
print ( $x - $y."\n" ) if $op eq '-';
print ( $x * $y."\n" ) if $op eq '*';
print ( $x / $y."\n" ) if $op eq '/';
print ( $x % $y."\n" ) if $op eq '%';
