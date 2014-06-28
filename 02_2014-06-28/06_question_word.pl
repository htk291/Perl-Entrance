#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Acme::MilkyHolmes;

my ($sherlock, $nero, $elly, $cordelia)  = Acme::MilkyHolmes->members();
my $answer = 'milkyholmes';

chomp (my $input = <STDIN>);

if ($input eq $answer) {
    $sherlock->say("ok");
} elsif ($input gt $answer) {
    $nero->say("too big");
} elsif ($input lt $answer) {
    $elly->say("too small");
} #else {
#    $cordelia->say("ng");
#}
