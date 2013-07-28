#!/usr/bin/perl

# This is a Module::Build script for Bio-DB-Das-BioSQL-0.04 installation.
# See http://search.cpan.org/~kwilliams/Module-Build/lib/Module/Build.pm

use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    dist_name     => 'Bio-DB-Das-BioSQL-0.04',
    dist_version  => '0.04',
    module_name   => 'Bio::DB::Das::BioSQL',
    dist_author   => 'Brian Osborne',
    dist_abstract => 'DasI access to the BioSQL database',
    license       => 'perl',
    requires      => {
        'perl'               => '5.6.1',
        'Bio::Root::Version' => '1.006901', # BioPerl
        'Bio::DB::BioDB'     => '0',        # bioperl-db
    },
    dynamic_config      => 1,
);

$build->create_build_script;

exit;
