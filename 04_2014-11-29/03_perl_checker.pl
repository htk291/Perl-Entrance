#!/usr/bin/env perl
use strict;
use warnings;

print '>>';
my $input = <STDIN>;
check($input);


sub check {
    my $input = shift;
    print "Perl Monger!\n" if $input =~ /[Pp]erl/;
}
