#lang sicp

(define (lookup-tree? given-key tree-of-records)
  (cond ((null? tree-of-records) false)
        ((= given-key (entry tree-of-records)) true)
        ((< given-key (entry tree-of-records))
         (lookup-tree? given-key (left-branch tree-of-records)))
        ((> given-key (entry tree-of-records))
         (lookup-tree? given-key (right-branch tree-of-records)))))