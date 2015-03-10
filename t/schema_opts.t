#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use Test::More tests => 1;

use FindBin qw($Bin);
use lib "$Bin/lib";

use DBICx::TestDatabase;

my $schema = DBICx::TestDatabase->connect('MySchema', undef, { 'quote-char' => '"' });
ok($schema->storage->connect_info->[-1]{'quote-char'});