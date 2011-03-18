use Perl6::Junction qw/any all none one/;
use Test::More;

ok( any('no match', 'match') eq 'match', 'Any funktioniert');
ok( all(10,11,12,13) >= 10,              'All funktioniert');
ok( none('first', 'second') eq 'third',  'None funktioniert');
ok( one(10,11,12,13) == 10,              'One funktioniert');

ok(any(1,2,3) == any (4,3,5), 'Any mit Any');


done_testing();
