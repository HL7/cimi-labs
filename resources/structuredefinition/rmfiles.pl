use strict;

open INFILE, '<', $ARGV[0];
my @data = <INFILE>;
close INFILE;

chomp @data;
foreach (@data) {
  print ":$_:\n";
  unlink $_ or warn "Could not unlink file: $_: $! ";
}


