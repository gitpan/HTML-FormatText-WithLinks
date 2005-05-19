# $Id: 05_parse_with_html_fragment.t 398 2004-02-02 17:13:08Z struan $

use Test::More tests => 3;
use HTML::FormatText::WithLinks;

my $html = new_html();
my $f = HTML::FormatText::WithLinks->new( leftmargin => 4 );

ok($f, 'object created');

my $text = $f->parse($html);

my $correct_text = qq!    This is a mail of some sort with a [1]link and some more text here.

    1. http://example.com/


!;

ok($text, 'html formatted');
is($text, $correct_text, 'html correctly formatted');

sub new_html {
return qq(This is a mail of some sort with a <a href="http://example.com/">link</a> and some more text here.);
}
