#lang sicp

;Recursive procedure and recursive process
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

#|
(define (exp b n)
  (exp-iter 1 b n))

(define (exp-iter a b count)
  (if (= count 0)
      a
      (exp-iter b (* a b)(- count 1)))) ; update is wrong, cant change both a  and b
|#

;Recursive procedure and iterative process
(define (exp b n)
  (exp-iter 1 b n))

(define (exp-iter a b count)
  (if (= count 0)
      a
      (exp-iter (* a b) b (- count 1))))
(exp 3 20)

;Fast recursive procedure and process using successive square
;Order of Growth is log(n)
(define (fast-exp b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-exp b (/ n 2))))
        (else (* b (fast-exp b (- n 1))))))

(define (square x)
  (* x x))

(define (even? x)
  (= (remainder x 2) 0))

(fast-exp 3 20)