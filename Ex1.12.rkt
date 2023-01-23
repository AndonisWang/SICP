#lang sicp
; Construct the recursive equation:
; Each data inside the triangle strtucture contains 2 things to locate it,
; 1. the layer L that the data locates
; 2. the order of the data in the specifc layer
; so once we have (layer order) pair we have the data
; (layer order) can be find in a recursive way
; (layer order) = (layer-1 order-1)+(layer-1 order)

(define (pascal-triangle layer order)
  (cond ((= layer order) 1)
        ((= order 1) 1)
        (else (+ (pascal-triangle (- layer 1) (- order 1)) (pascal-triangle (- layer 1) order)))))

(pascal-triangle 2 1)
(pascal-triangle 1 1)
(pascal-triangle 2 2)
(pascal-triangle 3 2)
(pascal-triangle 5 3)
(pascal-triangle 5 4)
(pascal-triangle 6 3)
(pascal-triangle 6 4)
(pascal-triangle 8 4)