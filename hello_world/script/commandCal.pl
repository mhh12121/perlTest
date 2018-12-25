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
        $num2=0;
    }else{
        die "Wrong INPUT\n";
    }
}

my $res= Cal::cal($op,$num1,$num2);
print "INPUT '$num1' and '$num2'\n";
print "result: $res \n";

# save name/number in database
exit;

 

