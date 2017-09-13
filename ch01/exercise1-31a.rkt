(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))
(define (factorial n)
  (define (identity x) x)
  (define (inc x) (+ 1 x))
  (product identity 1 inc n))
(define (pi)
  (define (term1 a)
    (define (square x) (* x x))
    (/ (- (square a) 1) (square a)))
  (define (next1 a)
    (+ a 2))
  (* 4.0 (product term1 3 next1 19999)))
(pi)