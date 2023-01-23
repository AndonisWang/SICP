#lang sicp
(define (f n)
  (f-iter 0 1 2 n))

(define (f-iter a b c count)
  (cond ((= count 2) c)
        ((< count 2) count)
        (else (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1)))))

; no need to keep track of all the intermediate values, use states to update.

(f -10)
(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)