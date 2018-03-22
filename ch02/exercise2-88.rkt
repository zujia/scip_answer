#lang sicp

(define (negate-terms terms)
  (map (lambda (term) (make-term (order term) (* -1 (coeff term)))) terms))
(define (negate-poly p)
  (make-poly (variable p) (negate-terms (term-list p))))
(put 'negate '(polynomial) negate-poly)

(define (sub-poly p1 p2)
  (if (same-variable? (variable p1) (variable p2))
      (add-poly p1 (negate p2))
      (error "Not same variable of polys -- SUB-POLY" (list p1 p2))))

(put 'sub '(polynomial polynomial) sub-poly)