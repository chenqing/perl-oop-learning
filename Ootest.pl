#!/usr/bin/perl

push(@INC,'/Users/chenqing/helloperl/OOP');

use test::Person ;

my $p = Person->new('name' =>'chenqing','age'=>24);

$p->say;

$p->run('100');

Person::eat;