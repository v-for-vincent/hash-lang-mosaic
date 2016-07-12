#lang br
(require parser-tools/lex) ; gives us lexer, for pattern matching
(require brag/support) ; for the 'token' data structure, which allows tagging

(define (tokenize input-port) ; token generator
  (define (next-token)
    (define get-token
      (lexer
       ... ))
    (get-token input-port)) ; the next token is simply a token read from this port
  next-token)