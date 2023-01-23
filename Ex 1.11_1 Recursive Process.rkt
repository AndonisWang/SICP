#lang sicp
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))
;Recursive process, easier to understand bvut requires lots of space.

(f 3)
(f 4)
(f 5)
(f 6)