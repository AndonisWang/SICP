#lang sicp

( define seq
   (cons 1
      (cons 2
            (cons 3
                  (cons 4 nil)))))

(car seq)
(car (cdr seq))
(car (cdr (cdr seq)))

(newline)
(car (cdr (cdr (cdr seq))))
(cadddr seq) ; a way to simplify writing all the car cdr
(newline)

(cdr (cdr (cdr (cdr seq))))
(cddddr seq) ; a way to simplify writing all the car cdr
(newline)

(cdr seq)

; the above cons construction for a sequence is the same as the list primitive below
(newline)
(display "***************")
(newline)
(display "List operation")
(newline)
(define one-through-four (list 1 2 3 4))
one-through-four
(car one-through-four)
(cdr one-through-four)
(cons 10 (cdr one-through-four))