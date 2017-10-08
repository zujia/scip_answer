(define (reverse item)
  (define (reverse-iter item acc)
    (if (null? item)
        acc
        (reverse-iter (cdr item) (cons (car item) acc))))
  (reverse-iter item '()))
(define (deep-reverse items)
  (define (iter items acc)
    (if (null? items)
        acc
        (let ((head (car items))
              (tail (cdr items)))
          (if (list? head)
              (iter tail (append (list (deep-reverse head)) acc))
              (iter tail (append (list head) acc))))))
  (iter items '()))
(define x (list (list 1 2) (list 3 4)))
x
(reverse x)
(deep-reverse x)