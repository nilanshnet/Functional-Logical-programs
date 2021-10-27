(define (rev list)
  (helper list '()))

(define (helper list accumulator)
  (if (null? list)
      accumulator
      (helper (cdr list) (cons (car list) accumulator))))
