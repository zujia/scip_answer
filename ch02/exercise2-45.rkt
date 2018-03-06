#lang sicp
(#%require sicp-pict)

(define (split f g)
  (lambda (painter n)
    (if (= n 0)
        painter
        (let ((smaller (split painter (- n 1))))
            (f painter (g smaller smaller))))))
        