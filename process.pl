#!/usr/bin/env perl

use DDP;
use Web::Scraper;
use File::Slurp;

my $contents = read_file("o/a");
my $sc = scraper {
  process "table[class=\"data\"] tr", "attr[]" => scraper {
    process "td:first-child", "attr" => "TEXT";
    process "td:nth-child(2)", "types" => "TEXT";
    process "td:nth-child(2) code", "junction_types[]" => "TEXT";
    process "td:nth-child(2) code", "junction_types_raw[]" => "RAW";
  };
};

my $map = {undef => 'Str', 'charset' => 'Str', 'x,y coordinates' => 'rx/^\s*\d+\s*,\s*\d+\s*$/', 'filename' => 'Str', 'URL' => 'Str', 'language-code' => 'Str', 'media-query', 'Str', 'text' => 'Str', 'link-type' => 'Str', 'content-type' => 'Str',};
my $res = $sc->scrape($contents);
p $res;
my @attrs;
for my $tr (@{$res->{attr}}) {
  next unless keys %$tr;
  p $tr if $tr->{attr} eq 'rel';
  if ($tr->{junction_types}) {
    if (@{$tr->{junction_types}} == 1) {
      $tr->{junction_types_raw} =~ s/^<code[^>]*>|<\/code>//g;
      my $codes = split(/<br.*?\/>/g, $tr->{junction_types_raw});
      print "codes = $codes\n" . length($codes) . "\n";
      p $codes;
      die;
      push @attrs, { $tr->{attr} => $codes };
    } else {
      push @attrs, { $tr->{attr} => sprintf("'%s'", join "'|'", @{$tr->{junction_types}}) };
    }
  } else {
    die "unmapped type: $tr->{types}" if ($map->{$tr->{types}}//'') eq '';
    push @attrs, { $tr->{attr} => $map->{$tr->{types}} };
  }
}

p @attrs;
