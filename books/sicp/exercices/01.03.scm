; Sum of squares of the two largest numbers from
; 3 numbers a b and c
(define (sum-squares-two-largest a b c)
    (+ (square (max a b))
       (square (max c (max a b)))))

; Square of a number x
(define (square x)
    (* x x))

; should display 41
(sum-squares-two-largest 2 4 5)

