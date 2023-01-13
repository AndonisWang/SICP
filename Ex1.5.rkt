#lang sicp
(define (p) (p))
(define (test x y)
  (if (= x 0) y 0))

(test 0 (p))