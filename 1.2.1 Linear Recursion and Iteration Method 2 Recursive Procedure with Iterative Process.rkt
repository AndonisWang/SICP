#lang sicp

(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* product counter)
                 (+ counter 1)
                 max-count)))

(factorial 6)

#|
; My own implementation
(define (fact-iter n count)
  (if (= count n)
      n
      (* count (fact-iter n (+ count 1)))))

(define (factorial n)
  (fact-iter n 1))

(factorial 6)
|#