# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'MetaTrans plugin for slovnik.cz.';
author 'Jan Pomikalek <xpomikal@fi.muni.cz>';
author 'Michal Spacek <skim@cpan.org>';
license 'perl-5';
name 'MetaTrans-SlovnikCz';
requires 'Encode' => 0;
requires 'HTTP::Request' => 0;
requires 'MetaTrans' => '1.06';
requires 'URI::Escape' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=MetaTrans-SlovnikCz';
resources 'homepage' => 'https://github.com/tupinek/MetaTrans-SlovnikCz';
resources 'repository' => 'git://github.com/tupinek/MetaTrans-SlovnikCz';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '1.06';

# Run.
WriteAll();
