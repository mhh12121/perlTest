#!/usr/bin/env perl


use strict;
use warnings;

use FindBin;
BEGIN { unshift @INC, "$FindBin::Bin/../lib"}
use Cal;

my ($op, $num1, $num2) = @ARGV;
 
if (not defined $num2) {
    if ($op eq '!'){
        $op='factorial';
    }else{
        die "Need OP\n";
    }
}

my $res= Cal::cal($op,$num1,$num2);
print "result: $res \n";
print "Save '$num1' and '$num2'\n";
# save name/number in database
exit;

 

