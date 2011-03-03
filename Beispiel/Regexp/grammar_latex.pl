use strict;
use warnings;

use Regexp::Grammars;
my $parser = qr{ 
                    <nocontext:>              # no empty keys in Hash
                 
                    <File>
                       
                    <rule: File>       <[Element]>*
                    
                    <rule: Element>    <Command> | <Literal>
                    
                    <rule: Command>    \\  <Literal>  <Options>?  <Args>?
                    
                    <rule: Options>    \[  <[Option]> ** (,)  \]
                    
                    <rule: Args>       \{  <[Element]>*  \}
                    
                    <rule: Option>     [^][\$&%#_{}~^\s,]+
                    
                    <rule: Literal>    [^][\$&%#_{}~^\s]+
    }x;
my $latex_document ='\documentclass[a4paper,11pt]{article}
\author{D. Conway}
';

if ($latex_document =~ $parser) {
        use Data::Dumper;
        print Dumper \%/;
} else {
        print "Not a latex document\n";
}
