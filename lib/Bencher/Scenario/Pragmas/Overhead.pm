package Bencher::Scenario::Pragmas::Overhead;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark startup overhead of various Perl pragmas',

    participants => [
        {name=>'(baseline)', perl_cmdline => ['-e1']},
        {name=>'strict', perl_cmdline => ['-e', 'use strict;']},
        {name=>'warnings', perl_cmdline => ['-e', 'use warnings;']},
        {name=>'vars', perl_cmdline => ['-e', 'use vars qw($foo);']},
        {name=>'utf8', perl_cmdline => ['-e', 'use utf8;']},
        {name=>'5.010001', perl_cmdline => ['-e', 'use 5.010001;']},
        {name=>'feature', perl_cmdline => ['-e', 'use feature qw(say);']},
    ],
};

1;
# ABSTRACT:
