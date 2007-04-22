#!/usr/bin/perl
# $Id: /mirror/youri/soft/BTS/trunk/t/prereq.t 2363 2007-04-22T18:36:37.912578Z guillomovitch  $

use strict;
use warnings;
use Test::More;

eval 'use Test::Prereq';
plan(skip_all => 'Test::Prereq required, skipping') if $@;

plan(skip_all => 'Author test, set $ENV{TEST_AUTHOR} to a true value to run')
    unless $ENV{TEST_AUTHOR};

prereq_ok(undef, undef, [ qw/
    Test::Kwalitee
    Test::Perl::Critic
    Test::Pod
    Test::Pod::Coverage
    Bugzilla
    Bugzilla::DB
 / ]);
