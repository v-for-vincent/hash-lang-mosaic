; this is here to decouple work on the reader from work on the expander
; note the lack of a quote before the first parenthesis
#lang s-exp "mosaic-expander.rkt"
(mosaic
  "\n"
  (line (color "r") (space " ") (space " ") (space " ") (space " ") (space " ") (color "b"))
  "\n"
  (line (color "g") (space " ") (space " ") (space " ") (space " ") (space " ") (color "g"))
  "\n"
  (line (space " ") (color "b") (space " ") (space " ") (space " ") (color "r"))
  "\n"
  (line (space " ") (space " ") (color "r") (space " ") (color "b"))
  "\n"
  (line (space " ") (space " ") (space " ") (color "b")))