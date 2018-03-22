#lang sicp

(put 'sine 'scheme-number
     (lambda (x)
       (tag (sin x))))
(put 'sine 'rational
     (lambda (x)
       (tag (sin (/ (numer x)
                    (denom x))))))
(put 'cosine 'scheme-number
     (lambda (x)
       (tag (cos x))))
(put 'cosine 'rational
     (lambda (x)
       (tag (cos (/ (numer x)
                    (denom x))))))

(define (sine x)
  (apply-generic 'sine x))

(define (cosine x)
  (apply-generic 'cosine x))