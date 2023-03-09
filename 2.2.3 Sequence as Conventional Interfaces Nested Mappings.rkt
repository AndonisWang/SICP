#lang sicp

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))
;(cons 1 (cons 2 (cons 3 (cons 4 nil)))) -> (1 2 3 4)

(enumerate-interval 1 5)

#|
(accumulate
 append
 nil
 (map ((lambda (i)
         (map (lambda (j) (list i j))
              (enumerate-interval 1 (- i 1))))
       (enumerate-intrval 1 n))))
|#