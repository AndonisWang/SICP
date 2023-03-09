#lang sicp
(define (sum-odd-squares tree)
  (cond ((null? tree) 0)
        ((not (pair? tree))
         (if (odd? tree)
             (square tree)
             0))  ;if not odd, we just add 0 instead of the square the value
        (else (+ (sum-odd-squares (car tree))
                 (sum-odd-squares (cdr tree))))))

(define (square x) (* x x))

(sum-odd-squares (list 1 (list 3 2 7) 9 4 8))

(display "*****************************")
(newline)

(display "Fib function to generate all the fib numbers")
(newline)
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))
(fib 5)
(fib 10)

(display "****************")
(newline)

(define (even-fibs n)
  (define (next k)
    (if (> k n)
        nil
        (let ((f (fib k)))
          (if (even? f)
              (cons f (next (+ k 1)))
              (next (+ k 1))))))
  (next 0))

(even-fibs 10)
(even-fibs 2)

(cons 1 (cons 2 (cons 3 nil)))