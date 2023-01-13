#lang sicp

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average (/ x guess) guess))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0004)
(sqrt 199110151954)
(sqrt 1234567899876543211954101100)