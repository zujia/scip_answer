#lang sicp

(define f
  (let ((first #t))
    (lambda (x)
      (if (and first (= x 1))
          (begin (set! first #f)
                 1)
          (begin (set! first #f)
                 0)))))

(+ (f 0)
   (f 1))