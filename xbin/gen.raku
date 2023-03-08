#!/usr/bin/env raku

my %to-gen = (
           a => { charset => Str, coords => rx/^\s*\d+\s*','\s*\d+\s*$/, download => Str, href => Str, hreflang => Str, media => Str, name => Str, rel => ['alternate', 'author', 'bookmark', 'help', 'license', 'next', 'nofollow', 'noreferrer', 'prefetch', 'prev', 'search', 'tag'], rev => Str, shape => ['rect', 'circle', 'poly', 'default'], target => ['_blank', '_parent', '_self', '_top'], type => Str, },
        abbr => { },
     acronym => { },
     address => { },
      applet => { code => Str, width => Int, height => Int, align => ['left', 'right', 'top', 'middle', 'bottom'], alt => Str, archive => Str, codebase => Str, hspace => Int, name => Str, vspace => Int, },
        area => { alt => Str, coords => Array[Int], download => Str, href => Str, hreflang => Str, media => Str, nohref => Bool, rel => ['alternate', 'author', 'bookmark', 'help', 'license', 'next', 'nofollow', 'noreferrer', 'prefetch', 'prev', 'search', 'tag'], shape => ['default', 'rect', 'circle', 'poly'], target => ['_blank', '_parent', '_self', '_top'], type => Str, },
     article => { },
       aside => { },
       audio => { },
           b => { },
        base => { href => Str, target => ['_blank', '_parent', '_self', '_top'], },
    basefont => { color => Str, face => Str, size => Str, },
         bdi => { },
         bdo => { dir => ['ltr', 'rtl'], },
         big => { },
  blockquote => { cite => Str, },
        body => { alink => Str, background => Str, bgcolor => Str, link => Str, text => Str, vlink => Str, },
          br => { clear => ['none', 'left', 'right', 'all'], },
      button => { autofocus => Bool, disabled => Bool, form => Str, formaction => Str, formenctype => ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], formmethod => ['get', 'post'], formnovalidate => Bool, formtarget => ['_blank', '_self', '_parent', '_top'], name => Str, type => ['button', 'submit', 'reset'], value => Str, },
      canvas => { width => Int, height => Int, },
     caption => { align => ['top', 'bottom', 'left', 'right'], },
      center => { },
        cite => { },
        code => { },
         col => { align => ['left', 'right', 'center', 'justify', 'char'], char => rx/^.$/, charoff => Str, span => Int, valign => ['top', 'middle', 'bottom', 'baseline'], width => Int, },
    colgroup => { align => ['left', 'right', 'center', 'justify', 'char'], char => rx/^.$/, charoff => Str, span => Int, valign => ['top', 'middle', 'bottom', 'baseline'], width => Int, },
        data => { value => Str, },
    datalist => { },
          dd => { },
         del => { cite => Str, datetime => DateTime, },
     details => { },
         dfn => { },
      dialog => { open => Bool, },
         dir => { compact => Bool, },
         div => { align => ['left', 'right', 'center', 'justify'], },
          dl => { },
          dt => { },
          em => { },
       embed => { },
    fieldset => { },
  figcaption => { },
      figure => { },
        font => { color => Str, face => Str, size => Str, },
      footer => { },
        form => { accept => Str, accept-charset => Str, action => Str, autocomplete => ['on', 'off'], enctype => ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], method => ['get', 'post'], name => Str, novalidate => Bool, target => ['_blank', '_parent', '_self', '_top'], },
       frame => { frameborder => ['0', '1'], longdesc => Str, marginheight => Int, marginwidth => Int, name => Str, noresize => Bool, scrolling => ['yes', 'no', 'auto'], src => Str, },
    frameset => { cols => Array[Num], rows => Array[Num], },
        head => { profile => Str, },
          h1 => { align => ['left', 'right', 'center', 'justify'], },
          h2 => { align => ['left', 'right', 'center', 'justify'], },
          h3 => { align => ['left', 'right', 'center', 'justify'], },
          h4 => { align => ['left', 'right', 'center', 'justify'], },
          h5 => { align => ['left', 'right', 'center', 'justify'], },
      hgroup => { },
          hr => { align => ['left', 'center', 'right'], noshade => Bool, size => Int, width => Int, },
        html => { manifest => Str, xmlns => Str, version => Str, },
           i => { },
      iframe => { align => ['left', 'right', 'top', 'middle', 'bottom'], frameborder => ['1', '0'], height => Int, longdesc => Str, marginheight => Int, marginwidth => Int, name => Str, sandbox => ['allow-forms', 'allow-pointer-lock', 'allow-popups', 'allow-same-origin', 'allow-scripts', 'allow-top-navigation'], scrolling => ['yes', 'no', 'auto'], seamless => Bool, src => Str, srcdoc => Str, width => Int, },
         img => { alt => Str, src => Str, align => ['left', 'right', 'top', 'middle', 'bottom'], border => Int, crossorigin => ['anonymous', 'use-credentials'], height => Int, hspace => Int, ismap => Bool, longdesc => Str, usemap => Str, vspace => Int, width => Int, },
       input => { type => ['button', 'checkbox', 'color', 'date ', 'datetime ', 'datetime-local ', 'email ', 'file', 'hidden', 'image', 'month ', 'number ', 'password', 'radio', 'range ', 'reset', 'search', 'submit', 'tel', 'text', 'time ', 'url', 'week'], accept => ['audio/*', 'video/*', 'image/*'], align => ['left', 'right', 'top', 'middle', 'bottom'], alt => Str, autocomplete => ['on', 'off'], autofocus => Bool, checked => Bool, disabled => Bool, form => Str, formaction => Str, formenctype => ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], formmethod => ['get', 'post'], formnovalidate => Bool, formtarget => ['_blank', '_self', '_parent', '_top'], height => Int, list => Str, max => Num|DateTime, maxlength => Str, min => Num|DateTime, minlength => Str, multiple => Bool, name => Str, pattern => Regex, placeholder => Str, readonly => Bool, required => Bool, size => Str, src => Str, step => Num|DateTime, value => Str, width => Int, },
         ins => { cite => Str, datetime => DateTime, },
         kbd => { },
      keygen => { },
       label => { for => Str, form => Str, },
      legend => { align => ['top', 'bottom', 'left', 'right'], },
          li => { type => ['circle', 'disc', 'square', 'a', 'A', 'i', 'I', '1'], value => Str, },
        link => { charset => Str, crossorigin => ['anonymous', 'use-credentials'], href => Str, hreflang => Str, media => Str, rel => ['alternate', 'author', 'help', 'icon', 'license', 'next', 'prefetch', 'prev', 'search', 'stylesheet', 'tag'], rev => Str, sizes => Str, target => ['_blank', '_parent', '_self', '_top'], type => Str, },
        main => { },
         map => { name => Str, },
        mark => { },
        menu => { label => Str, type => ['popup', 'toolbar', 'context'], },
    menuitem => { },
        meta => { name => ['application-name', 'author', 'description', 'generator', 'keywords'], content => Str, charset => Str, http-equiv => ['content-type', 'default-style', 'refresh'], scheme => Str, },
       meter => { },
         nav => { },
    noframes => { },
    noscript => { },
      object => { data => Str, type => Str, align => ['left', 'right', 'top', 'middle', 'bottom'], archive => Str, border => Int, classid => Str, codebase => Str, codetype => Str, declare => Bool, form => Str, height => Int, hspace => Int, name => Str, standby => Str, usemap => Str, vspace => Int, width => Int, },
          ol => { reversed => Bool, type => ['1', 'A', 'a', 'I', 'i'], compact => Bool, start => Str, },
    optgroup => { label => Str, disabled => Bool, },
      option => { label => Str, disabled => Bool, selected => Bool, value => Str, },
      output => { },
           p => { align => ['left', 'right', 'center', 'justify'], },
       param => { name => Str, value => Str, type => Str, valuetype => ['data', 'ref', 'object'], },
     picture => { },
         pre => { width => Str, },
    progress => { },
           q => { cite => Str, },
          rp => { },
          rt => { },
        ruby => { },
           s => { },
        samp => { },
      script => { async => Bool, type => Str, charset => Str, defer => Bool, src => Str, 'xml:space' => Bool, },
     section => { },
      select => { autofocus => Bool, disabled => Bool, form => Str, multiple => Bool, name => Str, required => Bool, size => Str, },
       small => { },
      source => { },
        span => { },
      strike => { },
      strong => { },
       style => { type => Str, media => Str, scoped => Bool, },
         sub => { },
     summary => { },
         sup => { },
         svg => { },
       table => { align => ['left', 'center', 'right'], bgcolor => Str, border => ['1', '0'], cellpadding => Int, cellspacing => Int, frame => ['above', 'below', 'border', 'box', 'hsides', 'lhs', 'rhs', 'void', 'vsides'], rules => ['all', 'cols', 'groups', 'none', 'rows'], sortable => Bool, summary => Str, width => Int, },
       tbody => { align => ['left', 'right', 'center', 'justify', 'char'], char => rx/^.$/, charoff => Str, valign => ['top', 'middle', 'bottom', 'baseline'], },
          td => { abbr => Str, align => ['left', 'right', 'center', 'justify', 'char'], axis => Str, bgcolor => Str, char => rx/^.$/, charoff => Str, colspan => Str, headers => Str, height => Int, nowrap => Bool, rowspan => Str, scope => ['col', 'colgroup', 'row', 'rowgroup'], valign => ['top', 'middle', 'bottom', 'baseline'], width => Int, },
    template => { },
    textarea => { autofocus => Bool, cols => Str, disabled => Bool, form => Str, maxlength => Str, minlength => Str, name => Str, placeholder => Str, readonly => Bool, required => Bool, rows => Str, wrap => ['hard', 'soft'], },
       tfoot => { align => ['left', 'right', 'center', 'justify', 'char'], char => rx/^.$/, charoff => Str, valign => ['top', 'middle', 'bottom', 'baseline'], },
          th => { abbr => Str, align => ['left', 'right', 'center', 'justify', 'char'], axis => Str, bgcolor => Str, char => rx/^.$/, charoff => Str, colspan => Str, headers => Str, height => Int, nowrap => Bool, rowspan => Str, scope => ['col', 'colgroup', 'row', 'rowgroup'], sorted => Num, valign => ['top', 'middle', 'bottom', 'baseline'], width => Int, },
       thead => { align => ['left', 'right', 'center', 'justify', 'char'], char => rx/^.$/, charoff => Str, valign => ['top', 'middle', 'bottom', 'baseline'], },
        time => { },
       title => { },
          tr => { align => ['left', 'right', 'center', 'justify', 'char'], bgcolor => Str, char => rx/^.$/, charoff => Str, valign => ['top', 'middle', 'bottom', 'baseline'], },
       track => { },
          tt => { },
           u => { },
          ul => { type => ['circle', 'disc', 'square'], compact => Bool, },
         var => { },
       video => { },
         wbr => { },
);

my %global-attr = (
  accesskey       => Str,
  'class'         => Array[Str],
  contenteditable => Bool,
  contextmenu     => Str,
  dir             => ['ltr', 'rtl'],
  draggable       => Bool,
  dropzone        => ['copy', 'move', 'link'],
  hidden          => Bool,
  id              => Str,
  lang            => Str,
  spellcheck      => Bool,
  style           => Str,
  tabindex        => Num,
  title           => Str,
  translate       => Bool,
  'xml:lang'      => Str,
  'data'          => 'RymlData',
);

my %enums;

sub get-type-attr($t, :$name, :$tag) {
  if $t.WHAT ~~ Array && $t.defined {
    my $type-name = "{$name.tc}T";
    if ! %enums{$type-name} {
      %enums{$type-name} = $t;
    } else {
      if %enums{$type-name} !== $t {
        $type-name = "{$tag.tc}{$name.tc}T";
        %enums{$type-name} = $t;
      }
    }
    return $type-name;
  }
  $t.WHAT.^name;
}

sub gen-ele-str(*%s) {
  my $out = '';
  for %s.keys.sort -> $name {
    $out = "$out\n             :\${S:g/':'/-/ given $name},";
  }
  "$out\n  ";
}

sub gen-attr-str(*%s, :$tag) {
  my $out = "\n";
  for %s.keys.sort -> $name {
    $out = "$out\n  {get-type-attr(%s{$name}, :$tag, :$name)} :\${S:g/':'/-/ given $name},";
  }
  "$out\n  ";
}

my $full-out = '';
for %to-gen.keys.sort -> $k {
  my $v = %to-gen{$k};
  my @attr = |%global-attr.keys, |$v.keys;
  $full-out = $full-out ~ "\n\n" ~ qq:to/EOF/;
sub circumfix:<{$k}[ ]> (
  *\@children,{ gen-attr-str(:tag($k), |%global-attr, |$v) } --> RyEl) is export \{

  RyEl.new(:tag<$k>,
           :\@children,
           :tags(\{{gen-ele-str(|%global-attr, |$v) }          \})
          ); 
\}
EOF
} 

for %enums.keys.sort.reverse -> $k {
  $full-out = qq:to/EOF/;
  enum $k is export <{%enums{$k}.map({"{$k.substr(0, *-1).uc}_{$_}"}).join(' ')}>;
  $full-out
  EOF
}

"lib/Ryml/Components.rakumod".IO.spurt(qq:to/EOF/);
use Ryml;
unit module Ryml::Components;

{$full-out.trim}
EOF
