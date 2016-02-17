package Bencher::Scenario::RegexpCommon::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our @modules = grep {!/\ARegexp::Common::(Entry|Other|WithActions.*|_.*)\z/} do { require App::lcpan::Call; @{ App::lcpan::Call::call_lcpan_script(argv=>["modules", "--namespace", "Regexp::Common"])->[2] } }; # PRECOMPUTE

our $scenario = {
    summary => 'Benchmark module startup overhead of Regexp::Common modules',

    module_startup => 1,

    participants => [
        map { +{module=>$_} } @modules,
    ],
};

1;
# ABSTRACT:
