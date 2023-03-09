#lang sicp
(define (scale-list items factor)
  (if (null? items)
      nil
      (cons (* (car items) factor)
            (scale-list (cdr items) factor))))

(scale-list (list 1 3 5 7 9) 1.5)

; Using higher order procedure to abstract this element-wise level operation

(define (map proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))

(map abs (list -1 1.5 -2.4 10))

(map (lambda (x) (* x x)) (list 2 4 6 8))