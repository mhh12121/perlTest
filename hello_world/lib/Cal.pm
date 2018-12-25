package Cal;
use strict;
use warnings;

sub cal{
 
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
    return $_[1]/$_[2];
  }elsif ($_[0] eq '*'){
    return $_[1]*$_[2];
  }elsif ($_[0] eq '%'){
    return $_[1]% $_[2];
  }
  return 0;
}

sub regCal{
  #todo
}
1;