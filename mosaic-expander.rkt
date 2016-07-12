#lang br
(define #'(mosaic-module-begin _PARSE-TREE ...)
  #'(#%module-begin
     '_PARSE-TREE ...))
(provide (rename-out [mosaic-module-begin #%module-begin])
         #%top-interaction)