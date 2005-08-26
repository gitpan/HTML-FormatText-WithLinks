# $Id: 01load.t 449 2005-05-23 18:53:36Z struan $

use Test::More tests => 5;

use_ok('HTML::FormatText::WithLinks');

my $f = HTML::FormatText::WithLinks->new();

ok($f, 'objected created');
isa_ok( $f, 'HTML::FormatText::WithLinks' );

my $f2 = $f->new();

ok( $f2, 'second object created' );
isa_ok( $f2, 'HTML::FormatText::WithLinks' );
