use Ryml::Components;


sub page($name) {
  html[
    head[],
    body[
      h1[ 'hello, whatever your name is' ],
      p[ "<just kidding>, {$name}" ],
      a[ 'test' ]:href<escape\>>,
    ],
  ].render;
}

say page('rf');

#  <html>
#    <head>
#    
#    </head>
#    
#    <body>
#      <h1>
#        hello, whatever your name is
#      </h1>
#      
#      <p hidden="True">
#        just kidding, rf
#      </p>
#    </body>
#  </html>
