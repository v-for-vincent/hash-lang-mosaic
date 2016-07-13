; this is here to decouple work on the reader from work on the expander
; note the lack of a quote before the first parenthesis
#lang s-exp "mosaic-expander.rkt"
(mosaic
  "\n"
  (line (color "r") (color " ") (color " ") (color " ") (color " ") (color " ") (color "b"))
  "\n"
  (line (color "g") (color " ") (color " ") (color " ") (color " ") (color " ") (color "g"))
  "\n"
  (line (color " ") (color "b") (color " ") (color " ") (color " ") (color "r"))
  "\n"
  (line (color " ") (color " ") (color "r") (color " ") (color "b"))
  "\n"
  (line (color " ") (color " ") (color " ") (color "g")))