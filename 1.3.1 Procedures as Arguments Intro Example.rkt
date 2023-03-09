#lang sicp
(define (sum-integers a b) ; sum the intergers from a to b inclusive
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

(sum-integers 6 2)
(sum-integers 2 6)

#|

(define (cube-sum a b)
  (if (> a b)
      0
      (+ (cube a)
         (sube-sum (+ a 1) b))))
|#

(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2)))
         (pi-sum (+ a 4) b))))

(pi-sum 1 5000)