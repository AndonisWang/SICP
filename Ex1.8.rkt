#lang sicp

(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (improved guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root guess x)
  (if (good-enough? guess x)
   guess
   (cube-root (improved guess x) x)))

(define (cbrt x)
  (cube-root 1.0 x))

(cbrt 27)
(cbrt (* 27 27))
(cbrt 19911015)
(cbrt 0.001)