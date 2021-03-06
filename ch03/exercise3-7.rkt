#lang sicp

(define (make-account balance password)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))
  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)
  (let ((passwords (list password)))
    (define (make-joint new-password)
      (set! passwords (cons new-password passwords))
      dispatch)
    (define (dispatch pw m)
      (if (memq pw password)
          (cond ((eq? m 'withdraw) withdraw)
                ((eq? m 'deposit) deposit)
                ((eq? m 'make-joint) make-joint)
                (else (error "Unknown request -- MAKE-ACCOUNT"
                             m)))
          (error "Incorrect password")))
  dispatch))
(define (make-joint account password new-password)
  ((account password 'make-joint) new-password))