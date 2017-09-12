
(define (curt-iter guess x)
  (if (good-enough? guess x)
      guess
      (curt-iter (improve guess x)
                 x)))
(define (square x)
  (* x x))
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))
(define (average x y)
  (/ (+ x y) 2))
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (curt x)
  (curt-iter 1.0 x))

(curt 81)