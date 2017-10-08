(define (square x)
  (* x x))
(define (square-list items)
  (if (null? items)
      nil
      (cons (square (car items))
            (square-list (cdr items)))))
(define (square-list-1 items)
  (map square items))
(square-list (list 1 2 3 4))
<<<<<<< HEAD
(square-list-1 (list 1 2 3 4))
=======
(square-list-1 (list 1 2 3 4))
>>>>>>> d5b9ccefe5df6c20a3b41707ccc97a913794e7bd
