(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))
(define (horner-evel x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* higher-terms x)))
              0
              coefficient-sequence))
(horner-evel 2 (list 1 3 0 5 0 1))
  