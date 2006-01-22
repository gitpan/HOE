package HOE;

=head1 NAME

HOE - Alternative kernel implementation of POE, for the heck of it.

=head1 SYNOPSIS

Usually right when you would call

  use POE qw(stuff);

insert another line just above it, like so

  use HOE;
  use POE qw(stuff);

or just include on the command line.

  perl -MHOE thing.perl

You can disable with an environment variable.

  HOE_DISABLE=1

=head1 DESCRIPTION

Hello,

First off a warning; What you read below is my idea of what should be. Please check the TODO file for what I know I need to implement and if you find any other edge let me know.

HOE is an alternative Kernel implmentation for POE. It includes all the support classes that it uses for itself but for [PH]OE to be useful you also need sessions and wheels other creations. These all come from the main POE distribution and I depend on that package in this one.

The goal in writing this collection of modules was to search for different possibly faster, possibly cleaner, possibly more elegant, or whatever alternatives for the POE classes. In some ways it is faster than POE, in some ways it's slower.

Cheers

=head1 SEE ALSO

POE

=head1 BUGS

See TODO file, report if not found please.

=head1 AUTHOR

Jonathan Steinert
hachi@cpan.org

=head1 LICENSE

Copyright 2006 Jonathan Steinert (hachi@cpan.org)

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itsef.

=cut

use strict;
use warnings;

our $VERSION = '0.00_01';
our $XS_VERSION = $VERSION;
$VERSION = eval $VERSION;

unless (exists( $ENV{HOE_DISABLE} ) and $ENV{HOE_DISABLE}) {
	my $location = $INC{'HOE.pm'};
	$location =~ s{\.pm$}{/};
	unshift @INC, $location;

}
else {
	warn( "Disabling HOE via environment HOE_DISABLE=$ENV{HOE_DISABLE}\n" );
}

1;
