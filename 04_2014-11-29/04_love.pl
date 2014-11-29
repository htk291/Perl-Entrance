#!/usr/bin/env perl
use strict;
use warnings;


my $words_ref = [
    'papix loves meat!',
    'boolfool loves sushi!',
];

love_food($words_ref);

sub love_food {
    my $word_ref = shift;
    for my $word (@$word_ref) {
        if ($word =~ /(.+) loves (.+)!/) {
            print "$1 => $2" . $/;
        }
    }

}
