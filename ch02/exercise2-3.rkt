(define (make-segment start end)
  (cons start end))
(define (start-segment seg)
  (car seg))
(define (end-segment seg)
  (cdr seg))
(define (make-point x y)
  (cons x y))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))

(define (make-rectangle upper-left-corner width height)
  (cons upper-left-corner (cons width height)))
(define (width rec)
  (car (cdr rec)))
(define (height rec)
  (cdr (cdr rec)))
(define (area rec)
  (* (width rec)
     (height rec)))
(define (perimeter rec)
  (* 2 (+ (width rec)
          (height rec))))