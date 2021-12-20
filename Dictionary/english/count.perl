#!/usr/bin/perl

# count total number of words in ispell dictionaries:
# words have one the two forms:
#    entry 
#    entry/VARIANTS
# treat each prefix/suffix in VARIANTS as one additional word
# NB: should treat prefixes and suffixes separately
use strict;

my $count = 0;
my ($line, $word, $suff);

while ($line = <>) {
    chomp $line;
    $count++;
    if ($line =~ /\//) {
	($word,$suff) = split /\//, $line;
	$count+= length($suff);
    }
}
print "$count\n";
exit;
