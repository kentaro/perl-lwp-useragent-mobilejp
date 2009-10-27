package LWP::UserAgent::MobileJP;
use 5.008_001;
use Any::Moose;
use Module::Pluggable
    search_path => [qw(LWP::UserAgent::MobileJP::Agent)],
    sub_name    => 'agents';

extends 'LWP::UserAgent';

our $VERSION = '0.01';

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

LWP::UserAgent::MobileJP - A Perl extension for blah, blah, blah...

=head1 SYNOPSIS

  use Test::HTTP;

  {
      local $Test::HTTP::UaClass = 'LWP::UserAgent::MobileJP::Agent::DoCoMo::906i';
      my $test = Test::HTTP->new( '...' );
      # ... do testing with mobile agent.
  }

=head1 DESCRIPTION

LWP::UserAgent::MobileJP provides some emulation agents of mobile ones
used in Japan.

=head1 METHODS

=head2 agents ()

=over 4

  my @agents = LWP::UserAgent::MobileJP->agents;
  for my $agent (@agents) {
      local $Test::HTTP::UaClass = $agent;
      my $test = Test::HTTP->new( '...' );
      # ... do testing with mobile agent.
  }

Returns all the agent classes.

=back

=head1 SEE ALSO

=over 4

=item * L<Test::HTTP>

=back

=head1 AUTHOR

Kentaro Kuribayashi E<lt>kentaro@cpan.orgE<gt>

=head1 SEE ALSO

=head1 COPYRIGHT AND LICENSE (The MIT License)

Copyright (c) Kentaro Kuribayashi E<lt>kentaro@cpan.orgE<gt>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

=cut
