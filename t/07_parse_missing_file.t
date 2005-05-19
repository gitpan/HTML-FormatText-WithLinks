# $Id: 07_parse_missing_file.t 383 2004-01-12 17:09:27Z struan $

use Test::More tests => 3;
use HTML::FormatText::WithLinks;

my $f = HTML::FormatText::WithLinks->new( leftmargin => 0 );

ok($f, 'object created');

my $text = $f->parse_file('t/missing.html');

is($text, undef, 'undef returned for missing file');
is($f->error, 't/missing.html not found or not a regular file',
                'correct error message for missing file');
