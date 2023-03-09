#lang sicp
(define (inc n) (+ n 1))
(define (cube n) (* n n n))

(define (sum-cubes a b)
  (sum cube a inc b))

;**************************
;Working as a template Higher Order Procedure.

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

;**************************

(sum-cubes 1 10)

(define (identity x) x)
(define (sum-integers a b)
  (sum identity a inc b))

(sum-integers 1 10)

(define (pi-term n) (/ 1.0 (* n (+ n 2))))
(define (pi-next n) (+ n 4))

(define (pi-sum a b)
  (sum pi-term a pi-next b))

(* 8(pi-sum 1 1000))