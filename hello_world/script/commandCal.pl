#!/usr/bin/env perl


use strict;
use warnings;

use FindBin;
BEGIN { unshift @INC, "$FindBin::Bin/../lib"}
use Cal;
print "Simple Calculator Go!\n";
print "Please enter [num1][op][num2] format, e.g: 1+1\n";


while(<>){

  chomp;
  my $result = $_;
  if ($result eq '-1' || $result eq ''){
      last;
  }
  my $input_op1;
  foreach my $input_op (split //,$result){
      if ($input_op eq '+'||$input_op eq '-'||$input_op eq '*'||$input_op eq '/'||$input_op eq '%'||$input_op eq '!'){
          $input_op1=$input_op;
          last;
      }
  }
  
  my @rex = split(/\+|\-|\*|\/|\%|\!/,$result);
  if ($input_op1 eq '!'){
      $rex[1]=0;
  }

  my $value=Cal::cal($input_op1,$rex[0],$rex[1]);
  print "result:".$value."\n";
}
print "See Ya\n";

##another stupid one
# my ($op, $num1, $num2) = @ARGV;
 
# if (not defined $num2) {
#     if ($op eq '!'){
#         $op='factorial';
#         $num2=0;
#     }else{
#         die "Wrong INPUT\n";
#     }
# }

# my $res= Cal::cal($op,$num1,$num2);
# print "INPUT '$num1' and '$num2'\n";
# print "result: $res \n";

# save name/number in database
exit;

 

