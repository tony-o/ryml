#!/usr/bin/env perl

use DDP;
use Web::Scraper;
use File::Slurp;
use List::MoreUtils qw<natatime>;

my @tags = glob('o/*');
my %invalid;

my $map = {undef                          => 'Str',
           'charset'                      => 'Str',
           'x,y coordinates'              => 'rx/^\s*\d+\s*\',\'\s*\d+\s*$/',
           'coordinates'                  => 'Array[Int]',
           'langcode'                     => 'Str',
           'async'                        => 'Bool',
           'autofocus'                    => 'Bool',
           'required'                     => 'Bool',
           'checked'                      => 'Bool',
           'declare'                      => 'Bool',
           'sortable'                     => 'Bool',
           'selected'                     => 'Bool',
           'seamless'                     => 'Bool',
           'scoped'                       => 'Bool',
           'readonly'                     => 'Bool',
           'reversednumber'               => 'Num',
           'reversed'                     => 'Bool',
           'nowrap'                       => 'Bool',
           'novalidate'                   => 'Bool',
           'defer'                        => 'Bool',
           'formnovalidate'               => 'Bool',
           'HeightxWidthany'              => 'Str',
           'ismap'                        => 'Bool',
           'multiple'                     => 'Bool',
           'nohref'                       => 'Bool',
           'noshade'                      => 'Bool',
           'noresize'                     => 'Bool',
           'preserve'                     => 'Bool',
           'http://www.w3.org/1999/xhtml' => 'Str',
           'color'                        => 'Str', 
           'number'                       => 'Str',
           'form-id'                      => 'Str',
           'unique-name'                  => 'Str',
           'character'                    => 'rx/^.$/',
           'YYYY-MM-DDThh:mm:ssTZD'       => 'DateTime',
           'machine-readable'             => 'Str',
           'content-type-list'            => 'Str',
           'charset-list'                 => 'Str',
           'open'                         => 'Bool',
           'pixels%*'                     => 'Array[Num]',
           'font-family'                  => 'Str',
           'filename'                     => 'Str',
           'URL'                          => 'Str',
           'language-code'                => 'Str',
           'media-query'                  => 'Str',
           'pixels%'                      => 'Int',
           'DTD'                          => 'Str',
           'text'                         => 'Str',
           'link-type'                    => 'Str',
           'length'                       => 'Int',
           'pixels'                       => 'Int',
           'HTML-code'                    => 'Str',
           'datalist-id'                  => 'Str',
           'numberdate-time'              => 'Num|DateTime',
           'regexp'                       => 'Regex',
           'form-control-id'              => 'Str',
           'media-types'                  => 'Str',
           'character-set'                => 'Str',
           'format/URI'                   => 'Str',
           'URLs'                         => 'Str',
           'URI'                          => 'Str',
           'option-value'                 => 'Str',
           'content type'                 => 'Str',
           'header-id'                    => 'Str',
           'message'                      => 'Str',
           'disabled'                     => 'Bool',
           'compact'                      => 'Bool',
           'content-type'                 => 'Str',};
my $sc  = scraper {
  process "table[class=\"data\"] tr", "attr[]" => scraper {
    process "td:first-child", "attr" => "TEXT";
    process "td:nth-child(2)", "types" => "TEXT";
    process "td:nth-child(2) code", "junction_types[]" => "TEXT";
    process "td:nth-child(2) code", "junction_types_raw" => "RAW";
  };
};

my $ml = -1;

for $tag (@tags) {
  if (length($tag) > $ml) {
    $ml = length($tag);
  }
}

$ml -= 2;

for my $tag (@tags) {
  my $contents = read_file($tag);
  my $res = $sc->scrape($contents);
  my @attrs;
  $tag =~ s/^o\///;
  for my $tr (@{$res->{attr}}) {
    next unless keys %$tr && $tr->{attr} && ($tr->{junction_types}//$tr->{types});
    $tr->{attr} =~ s/^\s*|\s*$//g;
    push @attrs, $tr->{attr};
    if (@{$tr->{junction_types}}) {
      my @codes;
      if (@{$tr->{junction_types}} == 1) {
        $tr->{junction_types_raw} =~ s/^<code[^>]*>|<\/code>//g;
        @codes = split(/<br.*?\/>/, $tr->{junction_types_raw});
      } else {
        @codes = @{$tr->{junction_types}};
      }
      if (@codes > 1) {
        push @attrs, sprintf("['%s']", join "', '", @codes);
        next;
      }
    }
    
    $tr->{types} =~ s/^\s*|\s*$//g;
    if (($map->{$tr->{types}}//'') eq '') {
      push @{$invalid{$tr->{types}}}, $tag;
      next;
      die "unmapped type: $tr->{types}";
    }
    push @attrs, $map->{$tr->{types}};
  }

  my $out = '';
  my $it  = natatime 2, @attrs;
  while (my @a = $it->()) {
    $out = sprintf('%s %s => %s,', $out, $a[0], $a[1]);
  }

  printf "  %${ml}s => {%s },\n", $tag, $out;
}

if (+(keys %invalid)) {
  p %invalid;
  die;
}
