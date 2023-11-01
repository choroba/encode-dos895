#!/usr/bin/perl
use warnings;
use strict;
use utf8;

use Encode;
use Encode::Dos895;

use Test::More tests => 3;

my $in = 'rýže';
my $out = "\x72\x98\x91\x65";

is encode('dos-895', $in), $out, 'encode';
is encode('nec-867', $in), $out, 'alias';
is encode('keybcs2', $in), $out, 'alias2';
