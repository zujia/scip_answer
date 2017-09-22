(define (make-center-percent c p)
  (let ((w (* 0.01 c p)))
  (make-center-width c w)))