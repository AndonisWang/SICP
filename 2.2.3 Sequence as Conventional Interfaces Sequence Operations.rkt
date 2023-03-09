#lang sicp
; filter applied to a sequence
(define (filter predicate sequence)
  (cond ((null? sequence) nil)
        ((predicate (car sequence)) ; the sequence is already a list, thus 'car sequence' only returns the first value 
         (cons (car sequence)     ; cons is used to accumulate and construct the list
               (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))

(filter odd? (list 1 2 3 4 5))
(display "******************")
(newline)

; accumulate applied to a sequence
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(accumulate + 0 (list 1 2 3 4 5))
(accumulate * 1 (list 1 2 3 4 5))
(accumulate cons nil (list 1 2 3 4 5))
(display "******************")
(newline)

; enumerate to get the sequence
(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))
(enumerate-interval 99 105)

(define (enumerate-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (list tree)) ; convert the single element to a list so that we can append them together to create a sequence.
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))))))
(enumerate-tree (list 1 (list 2 (list 3 4)) 5))
(display "******************")
(newline)

#| a detail example of how enumerate tree works

(enumerate-tree (list 1 (list 2 3) 4))

(append (enumerate-tree 1) (enumerate-tree {{2 3} 4}))
(append (list 1)           (append (enumerate-tree {2 3})                             (enumerate-tree 4)))
(append (list 1)           (append (append (enumerate-tree 2) (enumerate-tree 3))     (list 4)))
(append (list 1)           (append (append (list 2)           (list 3))               (list 4)))
(append (list 1)           (append (list 2 3)                                         (list 4)))
(append (list 1)           (list (2 3 4)))
(list 1 2 3 4)

|#

; all together the program now can be simplified to below form
(define (sum-odd-squares tree)
  (accumulate
   + 0 (map (lambda (x) (* x x)) (filter odd? (enumerate-tree tree)))))

(sum-odd-squares (list 1 (list 2 (list 3 4)) 5))

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define (even-fibs n)
  (accumulate
   cons
   nil
   (filter even? (map fib (enumerate-interval 0 n)))))

(even-fibs 10)

(display "******************")
(newline)
; One step further, combine sum-odd-squares and evben fibs
(define (list-fib-squares n)
  (accumulate
   cons
   nil
   (map (lambda (x) (* x x)) (map fib (enumerate-interval 0 n)))))
(list-fib-squares 10)