use inc::Module::Install;

name     'LWP-UserAgent-MobileJP';
license  'MIT';
all_from 'lib/LWP/UserAgent/MobileJP.pm';

requires 'Any::Moose';
requires 'Module::Pluggable';

build_requires 'Test::More';
build_requires 'Test::Class';
build_requires 'Module::Collect';

use_test_base;
author_tests('xt');
auto_include_deps;
auto_set_repository;
WriteAll;
