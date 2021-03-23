; Define a procedure that takes three numbers as arguments
; and returns the sum ofthe squares of the two larger numbers



(define (sum-square a b)
    (+ (square a) (square b))
)
(define (square a)
    (* a a)
)
(define (sum-square-largest a b c)
    (cond ((and (> a b) (< a c)) (sum-square a c))
          ((and (> a c) (< a b)) (sum-square a b))
          (else (sum-square b c))))

(sum-square-largest 1 2 0.5)