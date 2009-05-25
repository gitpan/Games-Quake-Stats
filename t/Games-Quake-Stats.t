#!/usr/bin/perl

# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Games-Quake-Stats.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 4;
BEGIN { use_ok('Games::Quake::Stats') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $stats;


ok($stats = Games::Quake::Stats->new(
       _frag_data => [["ShovelTooth", "pigvana"], ["ShovelTooth", "L00p"],
		      ["L00p", "ShovelTooth"], ["ShovelTooth", "pigvana"]]),
   'stats object created');


ok($stats->generate_text(), 'text output generated');

ok($stats->generate_html(), 'html output generate');
