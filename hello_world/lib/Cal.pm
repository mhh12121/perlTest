package Cal;
use strict;
use warnings;
use Scalar::Util qw(looks_like_number);

sub cal{
  #todo overflow
  #todo floating factorial
  if (!looks_like_number($_[1]) || !looks_like_number($_[2]) ){
    # warn "not a number!!!";#will panic???
    return "formatError";
  }
  if ($_[0] eq '+'){
    
    return $_[1]+$_[2];
  }elsif ($_[0] eq '!'){
    my $tmp=$_[1];
    my $res=1;
    my $i=1;
    if ($tmp==0){
      return 1;
    }
    $res*=++$i while $i<$tmp;
    return $res;
  }elsif ($_[0] eq '-'){
    return $_[1]-$_[2];
  }elsif($_[0] eq '/'){#divided by zero
    if($_[2]==0){
      # warn 'Look at wat u did!';#will panic
      return "zeroError";
    }
    return $_[1]/$_[2];
  }elsif ($_[0] eq '*'){
    return $_[1]*$_[2];
  }elsif ($_[0] eq '%'){
    if ($_[2]==0){
      return "zeroError";
    }
    return $_[1]% $_[2];
  }
  return 0;
}

sub regCal{
  #todo
}
1;