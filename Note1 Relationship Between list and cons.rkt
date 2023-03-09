#lang sicp
; cons can only take 2 arguments
; cons is a primitive procedure in LISP
; use cons to create a list
(define cons-exp1 (cons 1 (cons 2 (cons 3 (cons 4 nil)))))
cons-exp1
(car cons-exp1)
(cdr cons-exp1)

(display "*****************************")
(newline)

; list can take as many arguments as it likes
; list is a built-in function in LISP
; same as use cons to create the list
(define list-exp1 (list 1 2 3 4))
list-exp1
(car list-exp1)
(cdr list-exp1)

(display "*****************************")
(newline)

(define list-exp2 (list 1 (list 2 (list 3 (list 4)))))
list-exp2
(car list-exp2)
(cdr list-exp2)

(display "*****************************")
(newline)
; use append to append the list together to create a new list
(define list-exp3 (append (list 1) (list 2 3) (list 4)))
list-exp3
(car list-exp3)
(cdr list-exp3)

(display "*****************************")
(newline)
; nested append is the same
(define list-exp4 (append (list 1) (append(list 2 3) (list 4))))
list-exp4
(car list-exp4)
(cdr list-exp4)

(display "*****************************")
(newline)
; cons, list, append work together
(append (list 1) (cons 2 (cons 3 nil)))