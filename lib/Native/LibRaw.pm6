use v6;

use Native::LibRaw::Native;

class Native::LibRaw {
    has Native::LibRaw::Native $.native;

    submethod BUILD() { $!native .= new }
}
