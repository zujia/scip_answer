#lang sicp

(define (make-monitored f)
  (let ((count 0))
    (lambda (x)
      (cond ((eq? x 'how-many-calls?)
             count)
            ((eq? x 'reset-count)
             (set! count 0))
            (else
             (begin (set! count (+ 1 count))
                    (f x)))))))
(define s (make-monitored sqrt))

(s 100)
(s 'how-many-calls?)
(s 10)
(s 'how-many-calls?)