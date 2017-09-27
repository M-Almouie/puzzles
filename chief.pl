#!/usr/bin/perl -w
# Date: 27/09/2017
# A perl script to track the leader of a community given input files

open F, '<', $ARGV[0];
while(<F>) {
	($first, $second) = $_ =~ /^(\w+) (\w+)/;
	$map{$first}++;
	$map{$second}++;
}
close F;
$max = $second;
foreach $key(sort keys %map) {
	$max = $key if $map{$max} < $map{$key};
}
print"Chief is $max\n";
