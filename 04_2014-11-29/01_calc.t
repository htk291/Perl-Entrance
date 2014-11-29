#!/usr/bin/env perl -w
use strict;
use Test::More;
require '01_calc.pl';

is add(4, 5), 9;
is min(4, 5), -1;
is mul(4, 5), 20;
is div(4, 5), 0.8;

done_testing;
