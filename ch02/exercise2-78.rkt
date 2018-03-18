#lang sicp

(define (attach-tag type-tag contents)
  (if (number? contents)
      contents
      (cons type-tag contents)))

(define (type-tag datum)
  (cond ((pair? datum) (car datum))
        ((number? datum) 'scheme-number)
        (else "Bad tagged data -- TYPE-TAG")))

(define (content datum)
  (cond ((pair? datum) (cdr datum))
        ((number? datum) datum)
        (else "Bad tagged data -- CONTENTS" datum)))