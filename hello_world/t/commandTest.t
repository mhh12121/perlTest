#!/usr/bin/env perl
use strict;
use warnings;
use Cal;
use Test::Simple tests => 5;

ok( Cal::cal('+',1,2)==3);
ok( Cal::cal('-',1,2)==-1);
ok( Cal::cal('-','d',2) eq "formatError");
ok( Cal::cal('/',2,0) eq "zeroError");
ok( Cal::cal('%',2,0) eq "zeroError");