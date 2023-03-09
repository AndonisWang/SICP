#lang sicp
; Template
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

;using lambda to define term and next in the procedure
(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
       a
       (lambda (x) (+ x 4))
       b))

; try
(* 8 (pi-sum 1 50000))


;in fact integral is also a Higer Order Procedure becuase it can takes f
;which is defined as a procedure.
(define (integral f a b dx)
  (* (sum f
          (+ a (/ dx 2.0))
          (lambda (x) (+ x dx))
          b)
     dx))

(integral (lambda (x) (* x x x)) 0 1 0.01)

((lambda (x y z) (+ x y (inc z))) 1 2 3)