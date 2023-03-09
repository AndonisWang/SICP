#lang sicp
(define (scale-tree-method1 tree factor)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree factor))
        (else (cons (scale-tree-method1 (car tree) factor)
                    (scale-tree-method1 (cdr tree) factor)))))

(scale-tree-method1 (list 1 (list 2 (list 3 4) 5) (list 6 7)) 10)

(define (scale-tree-method2 tree factor)
  (map (lambda (sub-tree) ; map this internal primitive procedure aleady operates on individual elements of a tree. See below example and page 143 foodnote 12.
         (if (pair? sub-tree)
             (scale-tree-method2 sub-tree factor)
             (* sub-tree factor)))
       tree))

(scale-tree-method2 (list 1 (list 2 (list 3 4) 5) (list 6 7)) 10)

(map (lambda (x) (* x x)) (list 1 2 3 4))