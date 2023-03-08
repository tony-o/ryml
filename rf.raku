use Ryml::Components;


sub page($name) {
  html[
    head[],
    body[
      h1[ 'hello, whatever your name is' ],
      p[ "just kidding, {$name}" ]:hidden,
    ],
  ].render;
}

say page('rf');
