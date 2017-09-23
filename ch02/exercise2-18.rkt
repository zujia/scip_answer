;(define (reverse item)
;  (if (null? item)
;      item
;      (cons (reverse (cdr item)) (car item))))
;(reverse (list 1 4 9 16 25))
;(list 1 4 9 16 25)
(define (reverse item)
  (define (reverse-iter item acc)
    (if (null? item)
        acc
        (reverse-iter (cdr item) (cons (car item) acc))))
  (reverse-iter item '()))
(reverse (list 1 4 9 16 25))