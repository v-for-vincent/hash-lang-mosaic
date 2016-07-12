; not actually functional yet
; figuring it out as we go along
#lang brag
mosaic : line (NEWLINE line)*
line   : (color | space)*
color  : "r" | "g" | "b"
space  : " "