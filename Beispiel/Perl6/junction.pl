use Perl6::Junction qw/any all none one/;
use Test::More;

ok( any('no match', 'match') eq 'match', 'Any funktioniert');
ok( all(10,11,12,13) >= 10,              'All funktioniert');
ok( none('first', 'second') eq 'third',  'None funktioniert');
ok( one(10,11,12,13) == 10,              'One funktioniert');


done_testing();
