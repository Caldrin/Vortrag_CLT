use strict;
use warnings;
use 5.010;

my %hash = (erster_key  => 1,
            zweiter_key => 2);

say "Hashkey gefunden, auf den Regexp /zwei/ zutrifft." if %hash ~~ qr/zwei/;
