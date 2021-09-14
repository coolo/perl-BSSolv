#!/usr/bin/perl -w

use strict;
use Test::More tests => 46;

use BSSolv;
use Storable;
my $hashref = retrieve('t/state.home:coolo:bootstrap-test');

use Data::Dumper;
#print Dumper($hashref);

my @cycles;

BSSolv::depsort2($hashref->{pdeps}, $hashref->{dep2src}, $hashref->{pkg2src}, \@cycles, @{$hashref->{packs}});

print Dumper(\@cycles);
