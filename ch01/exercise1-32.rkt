(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result
                                 (term a)))))
  (iter a null-value))
(define (sum term a next b)
  (accumulate-iter + 0 term a next b))
(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))
(define (cube n) (* n n n))
(sum-cubes 1 10000000)

