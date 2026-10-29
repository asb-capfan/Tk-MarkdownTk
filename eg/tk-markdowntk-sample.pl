#!perl

use strict;
use warnings;
use FindBin qw/$Bin/;
use lib $Bin . '/../lib';
use Tk;
use Tk::MarkdownTk;

my $mw = Tk::MainWindow->new(-title => 'Example of Tk::MarkdownTk');
my $mdt = $mw->MarkdownTk();

$mdt->insert('end', q{
    some markdown here

    with tags like this: <Tk::Button -text="Click me!", -command="exit (0);">
});

$mdt->pack();

$mw->MainLoop;
exit(0);