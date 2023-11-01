#!/usr/bin/perl
use warnings;
use strict;
use utf8;

use Encode;
use Encode::Dos895;

use Test::More tests => 1;

my $in = "\x72\x98\x91\x65";
my $out = 'rýže';

is decode('dos-895', $in), $out, 'decode';
