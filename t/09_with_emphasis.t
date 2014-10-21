# $Id: 02_basic_parse.t 383 2004-01-12 17:09:27Z struan $

use Test::More tests => 3;
use HTML::FormatText::WithLinks;

my $html = new_html();
my $f = HTML::FormatText::WithLinks->new( with_emphasis => 1 );

ok($f, 'object created');

my $text = $f->parse($html);

ok($text, 'html formatted');
is($text, "   This is a mail of _some_ /sort/\n\n   It has _some_ of the /words/ emphasised\n\n", 'html correctly formatted');


sub new_html {
return <<'HTML';
<html>
<body>
<p>
This is a mail of <b>some</b> <i>sort</i>
</p>

<p>
It has <strong>some</strong> of the <em>words</em> emphasised
</p>
</body>
</html>
HTML
}
