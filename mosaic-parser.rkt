; figuring it out as we go along
; put a newline at the start because newline on the #reader line is immediately parsed
; can't require a newline at the end of a line, because last line ends with EOF
#lang brag
mosaic : (NEWLINE line)*
line   : color+
color  : "r" | "g" | "b" | " "