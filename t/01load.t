# $Id: 01load.t,v 1.2 2004/01/12 17:09:27 struan Exp $

use Test::More tests => 2;

use_ok('HTML::FormatText::WithLinks');

my $f = HTML::FormatText::WithLinks->new();

ok($f, 'objected created');
