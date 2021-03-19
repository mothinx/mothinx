(define (cube-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

  (define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.0000000001))

  (define (cube x)
  (cube-iter 1.0 x))

  (cube 9)

  (cube (+ 100 37))

  (cube 123456789012345678901)

  (cube 0.0000000000012345678)
