#lang sicp

(define (union set1 set2)
  (cond ((null? set1) set2)
        ((element-of-set? (car set1) set2)
         (union (cdr set1) set2))
        (else (cons (car set1)
                    (union (cdr set1) set2)))))