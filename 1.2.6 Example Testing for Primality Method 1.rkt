#lang sicp
(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n) ; Very clever, a divisor can't be greater than sqrt(n). Because of this order of growth is O(sqrt(n))
        ((divides? n test-divisor) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (square x) (* x x))
(define (divides? a b)
  (= (remainder a b) 0))

(define (prime? n)
  (= (smallest-divisor n) n))

(prime? 17)
(prime? 9)
(prime? 71)