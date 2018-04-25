#!/usr/bin/perl
# Name: FAIRRepoClient.pl
#
# Dependencies:
#   LWP::Protocol::https
#   Class::Accessor
#   DateTime
#   Class::Data::Inheritable
#   JSON
#   URI::Query
#   LWP::UserAgent
#   Log::Any
#   Moose
#   Class::Load::XS
#   Class::Load
#   Test::Exception
#
# Copyright 2018 University of North Carolina Board of Trustees
# All Rights Reserved

use lib 'lib';
use strict;
use warnings;

use Moose;

# load the API package
use WWW::SwaggerClient::DefaultApi;

# load the models
use WWW::SwaggerClient::Object::FAIRObject;
use WWW::SwaggerClient::Object::FAIRRepo;
use WWW::SwaggerClient::Object::InlineResponse200;

# for displaying the API response data
use Data::Dumper;
use WWW::SwaggerClient::DefaultApi;


my $version="0.0.2";
my $sccver='$Id:$';

my $dirname = dirname(__FILE__);
my $lookupCUI="$dirname/lookupCUI.pl";
use File::Basename;
use Cwd 'abs_path';
my $gRoot = dirname(abs_path($0))."/..";

our $gLimit = 1;
our $gPage = 20;
our $gScoringEngine = "prototype";
our $gKeywords = "";#'thyroid';
our $gURL = 'http://18.220.156.186:8089/FAIR-AT/0.0.2';
#our $gURL = 'http://18.220.156.186:8089/FAIR/v0.0.1';
our $gVerbose= 0; 
our $gRepo = 0;

sub display_usage {
        print "
Version $version $sccver
Usage:\n  ".(basename $0)." [-o <objid>] [ -k <keywords> [-p <page> ] [-l <limit>] ] [-r] [-s <scoringEngine>] [-u <url>] [-h] [-v]
Queries <url> for the items of interest.
  -u <url>            url for the FAIR api presented by the repo [$gURL]
  -k <keywords>       get a list of objectids, with their keywords [$gKeywords]
    -l <limit>          the number of items to return [$gLimit]
    -p <page>           which page number to start on (assuming a cursor) [$gPage]
  -o <objid>          get the metadata for the named object
  -s <scoringEngine>  use the named scoring engine [$gScoringEngine]
  -r                  get the repo data [$gRepo]
  -h                  This message
  -v                  Verbose (debug mode) [$gVerbose]

Copyright 2018 University of North Carolina Board of Trustees
All Rights Reserved

License: GNU GPL 2
".(basename $0)." comes with ABSOLUTELY NO WARRANTY;
This is free software, and you are welcome to redistribute it under certain conditions.
Author: Kimberly Robasky, krobasky\@renci.org
Created On: 2018
";
}

use Getopt::Long;
my $gHelp;
our $gObjid;
GetOptions ("keywords=s"   => \$gKeywords,
	    "limit=s"   => \$gLimit,
	    "page=s"   => \$gPage,
	    "objid=s"   => \$gObjid,
	    "scoringEngine=s"   => \$gScoringEngine,
	    "repo"   => \$gRepo,
	    "help"   => \$gHelp,
	    "url=s" => \$gURL,
	    "verbose"  => \$gVerbose)
    or die("Error in command line arguments\n".display_usage());
if($gHelp) {display_usage(); exit(0);}

my $api_instance = WWW::SwaggerClient::DefaultApi->new(base_url => $gURL);

my $keywords = $gKeywords; # string | chosen from the manifest at random
my $page_size = $gLimit; # int | Number of objects returned
my $page_number = $gPage; # int | Page number

my $objid = $gObjid;
my $eng = $gScoringEngine;

eval {
    my $result;

    if($keywords ne "") {
	print "\nobjects $keywords, $eng\n";  # xxx right now, engine is ignored
	$result = $api_instance->objects_get(keyword => $keywords, page_size => $page_size, page_number => $page_number);
	print Dumper($result);
    }

    if(defined $objid && $objid ne "") {
	print "\nobjectid $objid, scoringEngine $eng\n"; # xxx right now, engine is ignored
	$result = $api_instance->objects_objectid_get(objectid => $objid);
	print Dumper($result);
    }

    if($gRepo) {
	print "\nrepo info $eng\n";
	$result = $api_instance->repo_info_get(scoring_engine => $eng);
	print Dumper($result);
    }

};
if ($@) {
    warn "Exception when calling DefaultApi->objects_get: $@\n";
}

