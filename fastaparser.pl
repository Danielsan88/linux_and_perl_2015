#!/usr/bin/perl;
use strict;
use warnings;

%"sequence"=()
my$key="";
my $filename="fasta.file";
open FASTA,$filename or die "$filename $!";
while (<FASTA>)
{
if ($_=(/ ^ >/)
    {$sequence{"$_"}="";}
else
{$sequence($key)=$sequence($key)$_;