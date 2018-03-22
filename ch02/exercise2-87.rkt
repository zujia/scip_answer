#lang sicp

(define (=zero-poly? p)
  (define (=zero-term? terms)
    (or (empty-termlist? terms)
        (and (=zero? (coeff (first-term terms)))
             (=zero-terms? (rest-terms terms)))))
  (=zero-term? (term-list p)))

(put 'zero? 'polynomial =zero-poly?)