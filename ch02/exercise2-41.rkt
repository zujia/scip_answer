#lang sicp

(define (unique-pairs-3 n)
  (flatmap (lambda (i)
             (map (lambda (j)
                    (map (lambda (k) (list i j k))
                         (enumerate-interval 1 (- j 1))))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))
(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))
(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
;(unique-pairs-3 10)
