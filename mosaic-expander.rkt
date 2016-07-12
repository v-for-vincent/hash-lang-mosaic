#lang br
(require pict)

(define #'(mosaic-module-begin _PARSE-TREE ...)
  #'(#%module-begin
     _PARSE-TREE ...))
(provide (rename-out [mosaic-module-begin #%module-begin])
         #%top-interaction)

; can I get rid of NEWLINE here?
; e.g. transform the syntax to a datum, only grab every second element, transform back to syntax
(define #'(mosaic NEWLINE LINE ...)
  (define-syntax lines (filter (λ (x) ((syntax->list NEWLINE LINE ...)
  #'(vl-append LINE ...)) ; mosaic itself does nothing - when do we need begin? just to be able to parenthesize?
(provide mosaic)

(define #'(line COLOR ...)
  #'(hc-append COLOR ...))
(provide line)

(define-cases #'color
  [#'(color "r") #'(colorize (filled-rectangle 10 10) "red")]
  [#'(color "g") #'(colorize (filled-rectangle 10 10) "green")]
  [#'(color "b") #'(colorize (filled-rectangle 10 10) "blue")]
  [#'(color " ") #'(colorize (filled-rectangle 10 10) "white")])
(provide color)