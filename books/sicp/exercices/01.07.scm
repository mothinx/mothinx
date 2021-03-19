(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

  (define (average x y) 
  (/ (+ x y) 2))

  (define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.0000000001))

  (define (sqrt x)
  (sqrt-iter 1.0 x))

  (sqrt 9)

  (sqrt (+ 100 37))

  (sqrt 123456789012345678901)

  (sqrt 0.0000000000012345678)