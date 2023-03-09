#lang sicp
(define seq (cons (list 1 2) (list 3 4)))
seq
(car seq)
(cdr seq)
(cddr seq)
(cddar seq)
(cdddr seq)
(pair? seq)
(newline)
(display "******************")
(newline)
; length code from 2.2.1
(define (length items)
  (if (null? items)
  0
  (+ 1 (length (cdr items)))))

(length (list 1 2 3 4 8 9 0))

; length can't give out the correct length for seq
; this is beacuse of (cdr seq) gives out (3 4)
; same is true for (list seq seq)
(length seq)
(list seq seq)
(length (list seq seq))
(cdr (list seq seq))
(cddr (list seq seq))

(newline)
(display "******************")
(newline)
(display "New procedure count-leaves\n")
(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))

(count-leaves seq)