#lang sicp

;(define (equal? a b)
;  (cond ((and (pair? a) (pair? b))
;         (and (equal? (car a) (car b))
;              (equal? (cdr a) (cdr b))))
;        ((not (or (pair? a) (pair? b)))
;         (eq? a b))
;        (else #f)))


(equal? '(this is a list) '(this (is a) list))

