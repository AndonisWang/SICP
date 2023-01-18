#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(A 1 10)

#|
The steps are below,
(A 1 10)

(A 0 (A 1 9))
2*(A 1 9)

2*(A 0 (A 1 8))
2*2*(A 1 8)

2*2*(A 0 (A 1 7))
2*2*2*(A 1 7)
...
The patteren is very similar, (A 1 n)=2^n

|#

(A 2 4)

#|
(A 2 4) can be obtained based on conclusion in (A 1 n)

(A 2 4)
(A 1 (A 2 3)) -> Based on conclusion from above, => 2^(A 2 3)

Focus on (A 2 3)
(A 2 3)
(A 1 (A 2 2)) -> thus, (A 2 3)=2^(A 2 2)

Similarly,
(A 2 2)
(A 1 (A 2 1)) -> thus, (A 2 2)=2^(A 2 1)

Finally,
(A 2 1) =2

In conclusion, (A 2 4)=2^(2^(2^(2))), more genral, (A 2 n)=2^(2^(2^...)) 
|#

(A 3 3)

#|
This one is based on the previous conclusion.
(A 3 3)
(A 2 (A 3 2)) -> thus, (A 3 3) = 2^(2^(2^...))
|#

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))

(f 5)
(g 5)
(h 3) ; (h 5) is almost too large toshow the result.