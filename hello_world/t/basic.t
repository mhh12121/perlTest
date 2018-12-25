use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('HelloWorld');


$t->get_ok('/')->status_is(200)->content_like(qr/calculator/i);

$t->post_ok('/'=>json=>{op=>'+',num1=>'1',num2=>'2'})
  ->status_is(200)
  ->content_is("3");

$t->post_ok('/',{op=>'-',num1=>'1',num2=>'2'})
  ->status_is(200)
  ->content_is("-1");
$t->post_ok('/',{op=>'-',num1=>'d',num2=>'2'})
  ->status_is(200)
  ->content_is("formatError");

done_testing();
