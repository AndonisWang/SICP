#lang sicp

(define (list-ref items n)
  (if (= n 0)
  (car items)
  (list-ref (cdr items) (- n 1))))

(list-ref (list 1 2 3 4) 0)
(list-ref (list 1 2 3 4) 2)
(list-ref (list 1 2 3 4) 3)

(display "**************")(newline) 

; recursive
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define odds (list 1 3 5 7))
(length odds)

(display "**************")(newline) 

;iterative
(define (length1 items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

(length1 (list 20 29))

(cdr (cdr (list 20 29))) ;list and cons are a little bit different, you can't use (cdr (cdr (cons 20 29)))
(null? (cdr (cdr (list 20 29))))

(display "**************")(newline) 

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append (list 1  2 3) (list 98 99 100))