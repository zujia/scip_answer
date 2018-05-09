#lang sicp

(define (count-pairs x)
  (let ((visited '()))
    (define (count x)
      (cond ((not (pair? x))
             0)
            ((memq x visited)
             0)
            (else
             (set! visited (cons x visited))
             (+ (count (car x))
                (count (cdr x))
                1))))
    (count x)))
(define y (list 'a))
(define w (cons y y))
(define u (cons w w))
(count-pairs u)