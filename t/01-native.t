use v6;

use Test;

use Native::LibRaw::Native :internal;

isa-ok libraw_init(0), 'Native::LibRaw::Native', 'libraw_init';
like libraw_version(), /^^ \d+ \. \d+ \. \d+ \- \w+ $$/, 'libraw_version';

done-testing;
