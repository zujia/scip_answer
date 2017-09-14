(define (iterative-improve good-enough? improve)
  (lambda (x)
    (if (good-enough? x)
        x
        ((iterative-improve good-enough? improve)
         (improve x)))))