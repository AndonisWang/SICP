#lang sicp
(define (fast-expt b n)
  (fast-expt-iter (base count 1))) ; 1 is used to update result

#|
Iterative process use state variables
It counts up to n with 2 4 8 16 32 ...

|#
