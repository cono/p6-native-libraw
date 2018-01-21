use v6;

use Test;

use Native::LibRaw;

my $libraw = Native::LibRaw.new;
isa-ok $libraw, 'Native::LibRaw', 'Create LibRaw image';

like $libraw.native.version, /^^ \d+ \. \d+ \. \d+ \- \w+ $$/, 'Version looks ok';

done-testing;
