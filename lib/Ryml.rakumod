unit module Ryml;

class RyEl is export {
  has $!tag;
  has @!children;
  has %!tags;

  submethod BUILD(Str:D :$!tag, :@!children, :%!tags) {
    dd {:$!tag, :@!children, :%!tags };
  }

  method !pct($val) {
    ($val//'').Str;
  }

  method !gen-tags() {
    my $out = '';
    for %!tags.keys.grep({ $_.defined && %!tags{$_}.defined }).sort -> $k {
      $out = "$out $k=\"{self!pct(%!tags{$k})}\"";
    }
    $out;
  }

  method !render-children() {
    my $out = '';
    for @!children -> $child {
      if $child ~~ Str {
        $out = "$out\n$child";
      } elsif $child.WHAT ~~ RyEl {
        $out = "$out\n{$child.render()}";
      } else {
        die 'RyEl does not know what to do with type: '~$child.WHAT.^name~" value({$child})";
      }
    }
    $out.trim;
  }

  method Str() {
    $.render;
  }

  method render() {
    qq:to/EOF/
<{$!tag}{self!gen-tags}>
{self!render-children.lines.map({"  $_"}).join("\n")}
</$!tag>
EOF
  }
}
