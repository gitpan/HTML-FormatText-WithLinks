# $Id: 05_parse_with_html_fragment.t,v 1.3 2004/01/12 17:09:27 struan Exp $

use Test::More tests => 3;
use HTML::FormatText::WithLinks;

my $html = new_html();
my $f = HTML::FormatText::WithLinks->new( leftmargin => 4 );

ok($f, 'object created');

my $text = $f->parse($html);

my $correct_text = qq!    This is a mail of some sort with a [1]link.

    1. http://example.com/


!;

ok($text, 'html formatted');
is($text, $correct_text, 'html correctly formatted');

sub new_html {
return <<'HTML';
This is a mail of some sort with a <a href="http://example.com/">link</a>.
HTML
}
