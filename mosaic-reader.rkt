#lang br
(require parser-tools/lex) ; gives us lexer, for pattern matching
(require brag/support) ; for the 'token' data structure, which allows tagging

(define (tokenize input-port) ; this is not the generator, but *produces* the generator
  (define (next-token) ; this is the generator
    (define get-token
      (lexer
       [(char-set "rgb ") lexeme]
       [(char-set "\n") (token 'NEWLINE)]
       [(char-complement (char-set "rgb\n ")) (token 'OTHER)] ; never use these in grammar
       [(eof) eof]))
    (get-token input-port)) ; the next token is simply a token read from this port
  next-token)

(require "mosaic-parser.rkt")
(define (read-syntax source-path input-port)
  (define parse-tree (parse source-path (tokenize input-port)))
  (strip-context
   (inject-syntax ([#'_PARSE-TREE parse-tree])
                  #'(module mosaic-mod "mosaic-expander.rkt"
                      _PARSE-TREE))))
(provide read-syntax)