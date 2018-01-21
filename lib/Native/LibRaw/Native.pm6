use v6;
use NativeCall;

class Native::LibRaw::Native is repr('CPointer') {
    my Str $version;

    method new {
        libraw_init(0);
    }

    method version {
        return $version ||= libraw_version();
    }
}

sub libraw_version() returns Str is export(:internal) is native('raw', v16) { * }
sub libraw_init(uint32) returns Native::LibRaw::Native is export(:internal) is native('raw', v16) { * }
