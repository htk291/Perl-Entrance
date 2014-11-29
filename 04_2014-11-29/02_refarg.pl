#!/usr/bin/env perl
use strict;
use warnings;

my @solami_smile = qw/ lala mirei sophie /;
my %dressing_pafe = (
    guiter => 'shion',
    drums  => 'dorothy',
    bass   => 'leona',
);

output_refs(\@solami_smile, \%dressing_pafe);

sub output_refs {
    my ($solami_smile, $dressing_pafe) = @_;

    for my $member (@$solami_smile) {
        print "solami: $member". $/;
    }

    for my $key (keys %$dressing_pafe) {
        print "drepafe : $key : $dressing_pafe->{$key}" . $/;
    }
}
