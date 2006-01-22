use inc::Module::Install;

name		'HOE';

license		'perl';

all_from	'lib/HOE.pm';

requires	'Time::HiRes'	=> 0;
requires	'WeakRef'	=> 0;
requires	'Carp'		=> 0;
requires	'Errno'		=> 0;
requires	'POSIX'		=> 0;
requires	'POE'		=> 0;

no_index	directory	=> 'tests';
no_index	file		=> 'test.pl';

auto_install;

WriteAll;
