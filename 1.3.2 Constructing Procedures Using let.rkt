#lang sicp

(define (f x y)
  (define (f-helper a b)
    (+ (* x (* a a))
       (* y b)
       (* a b)))
  (f-helper (+ 1 (* x y))
            (- 1 y)))

(f 1 2)

(define (g x y)
  ((lambda (a b)
     (+ (* x (* a a))
        (* y b)
        (* a b)))
   (+ 1 (* x y));the last 2 lines serve as the way to get a b in the lambda function
   (- 1 y)))

(g 1 2)

;Using let to create intermediate variables a b
(define (h x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (* a a))
       (* y b)
       (* a b))))

(h 1 2)