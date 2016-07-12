#lang br
(require pict)

(define #'(mosaic-module-begin _PARSE-TREE ...)
  #'(#%module-begin
     _PARSE-TREE ...))
(provide (rename-out [mosaic-module-begin #%module-begin])
         #%top-interaction)

(define #'(mosaic LINE ...)
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