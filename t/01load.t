# $Id: 01load.t 383 2004-01-12 17:09:27Z struan $

use Test::More tests => 2;

use_ok('HTML::FormatText::WithLinks');

my $f = HTML::FormatText::WithLinks->new();

ok($f, 'objected created');
