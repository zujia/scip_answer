#lang sicp

(define (=zero? x)
  (apply-generic '=zero? x))

;;scheme-number package
(put '=zero? '(scheme-number)
     (lambda (x) (= 0 x)))

;;rational package

(put '=zero? '(rational)
     (lambda (x) (= 0 (numer x))))

;;complex package

(put '=zero? '(complex)
     (lambda (c) (and  (= 0 (real-part c))
                       (= 0 (imag-part c)))))