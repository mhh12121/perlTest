package HelloWorld::Controller::Example;
use Mojo::Base 'Mojolicious::Controller';
use strict;
use warnings;
use Cal;

# This action will render a template
sub welcome {
  my $self = shift;
  

  # Render template "example/welcome.html.ep" with message
  $self->render(msg => 'Simple Calculator');

}
sub calFromWeb{
  my $self=shift;
   # Get your 'public' dir path

  my $op=$self->param('op');
  my $num1= $self->param('num1');
  my $num2=$self->param('num2');
  
  my $result=Cal::cal($op,$num1,$num2);
  
  return $self->render(text=>$result);
  # if ( ($op eq '+') ){
  #   return $self->render(text=>($num1+$num2));
  # }else{
  #   return $self->render(text=>("yoyoy"));
  # }
}



  # if($self->op)
  
  # my $sum = 0;
  #   foreach my $v (@_) {
  #       $sum += $v;
  #   }
  #   return $sum;


1;
