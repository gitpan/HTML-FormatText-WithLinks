# $Id: 07_parse_missing_file.t,v 1.2 2004/01/12 17:09:27 struan Exp $

use Test::More tests => 3;
use HTML::FormatText::WithLinks;

my $f = HTML::FormatText::WithLinks->new( leftmargin => 0 );

ok($f, 'object created');

my $text = $f->parse_file('t/missing.html');

is($text, undef, 'undef returned for missing file');
is($f->error, 't/missing.html not found or not a regular file',
                'correct error message for missing file');
