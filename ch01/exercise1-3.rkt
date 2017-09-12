(define (max a b)
  (if (< a b)
      b
      a))
(define (max_3 a b c)
  (max (max a b) c))
(max_3 5 2 3)