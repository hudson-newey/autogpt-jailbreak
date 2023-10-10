#!/usr/bin/perl

my $autoGptPath = @ARGV[0];

sub escapeWorkspace {
    my $file = $autoGptPath."/autogps/autogpt/workspace/workspace.py";
    print "Removing workspace restrictions...\n";

    rename($file, $file . '.bak');
    open(IN, '<' . $file . '.bak') or die $!;
    open(OUT, '>' . $file) or die $!;
    while(<IN>)
    {
        $_ =~ s/raise ValueError\(\n/print\(\n#/gm;
        print OUT $_;
    }
    close(IN);
    close(OUT);
}

print "Using AutoGPT after this script has been applied may lead to damage or harm to your computer\n";
print "The author takes no responsability for any damage or harm caused by the use of this script\n";
print "Are you sure you want to continue (yes/no)? (no)\n";

my $confirm = <STDIN>;
chomp $confirm;
exit 0 if !($confirm eq "yes");

escapeWorkspace();
