use Test::More tests => 3;

BEGIN {
    eval "use Test::MockObject";
    plan skip_all => "Test::MockObject  required for testing TreeBuilder problems" if $@;

    my $m = Test::MockObject->new();
    $m->fake_new( 'HTML::TreeBuilder' );
    $m->mock( 'parse', sub { $! = 1122; return undef; } );
};

use HTML::FormatText::WithLinks;

my $f = HTML::FormatText::WithLinks->new( );

ok($f, 'object created');

my $text = $f->parse('<html><head></head><body><p>some text</p></body></html>');

is($text, undef, 'undef returned for broken HTML::TreeBuilder');
like($f->error, qr/^HTML::TreeBuilder problem: /,
                'correct error message for broken HTML::TreeBuilder');
