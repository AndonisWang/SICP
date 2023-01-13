#lang sicp
(define (square a) (* a a))

(define (<= m n)
  (or (< m n) (= m n)))

(define (square-sum-of-large-two x y z)
  (cond ((and (<= x y) (<= x z)) (+ (square y) (square z)))
        ((and (<= y x) (<= y z)) (+ (square x) (square z)))
        ((and (<= z y) (<= z x)) (+ (square y) (square x)))))

(square-sum-of-large-two 1 2 3)
(square-sum-of-large-two 2 4 2)
(square-sum-of-large-two 4 1 2)