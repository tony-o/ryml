RYML:

An easier templating system for Raku with basic type/tag safety.  Example:

```raku
use Ryml::Components;

sub page($name) {
  html[
    head[],
    body[
      h1[ 'j&k<>' ],
      p[ "<just kidding>, {$name}" ],
      a[ 'test' ]:href<escape\>\>\>>,
      span[ 'a¢£§©«»®°±¶·½–—‘’‚“”„†‡•…′″€™≈≠≤≥<>b' ],
    ],
  ].render;
}

# page('xyz') will render a complete html page
```
