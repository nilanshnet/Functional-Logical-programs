(define (lisToTuple list1 list2)
    (if (or (null? list1) (null? list2))  '()
    (append (append 
      (cons (cons (car list1) (cons (car list2) '())) '()) (secondListiter (list (car list1))(cdr list2))) (lisToTuple (cdr list1) list2))
))

(define (secondListiter list1 list2)
  (if (or (null? list1) (null? list2))
    '()
    (append
      (cons (cons (car list1) (cons (car list2) '())) '()) 
      (secondListiter (list (car list1)) (cdr list2)))
))