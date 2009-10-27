package Test::LWP::UserAgent::MobileJP;
use strict;
use warnings;
use FindBin;
use Module::Collect;
use Test::More;
use base qw(Test::Class);

use LWP::UserAgent::MobileJP;

sub agents : Tests {
    my $self      = shift;
    my $collected = [
        map { $_->package } @{Module::Collect->new(
            path    => "$FindBin::Bin/../lib",
            prefix  => 'LWP::UserAgent::MobileJP::Agent',
            pattern => '*.pm',
        )->modules}
    ];
    my $modules = [ LWP::UserAgent::MobileJP->agents ];

    is_deeply $modules, $collected, 'retrieves all the agent classes';
}

__PACKAGE__->runtests;

1;
