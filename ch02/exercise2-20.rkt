(define (same-parity head . tail)
  (define (iter item acc)
    (if (null? item)
        acc
        (iter (cdr item)
              (if (even? (+ (car item) head))
                  (append acc (list(car item)))
                  acc))))
  (cons head (iter tail '())))
                  
(same-parity 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)