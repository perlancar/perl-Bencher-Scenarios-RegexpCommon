package Bencher::Scenario::RegexpCommon::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark module startup overhead of Regexp::Common modules',

    module_startup => 1,

    participants => [
        {module=>'Regexp::Common'},
        {module=>'Regexp::Common::time'},
        {module=>'Regexp::Common::debian'},
        {module=>'Regexp::Common::Emacs'},
        {module=>'Regexp::Common::Email::Address'},
        {module=>'Regexp::Common::net::CIDR'},
    ],
};

1;
# ABSTRACT:
