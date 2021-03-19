
All languages has three mechanisms:
- **primitives expressions**: the simplest entities(int,long, number etc...) 
- **means of combination**: coupond elements made with simpler ones
- **means of abstraction**: names and units for coupond elements (myVar...)

2 elements in programming: data and procedures.

## 1.1.1 Expressions

In an interpreter, we type **expressions**

the display is the **evluation**
of this expressions

expression:  ```486``` 

combination: ```(+ 12 8)```

- operator: ```+```

- operands: ```12 ``` and ```8```

advantages of placing operator leftmost:
- many numbers as we want ```(+ 12 5 789 3523)```
- nested combinations ```(+ (* 3 5) 2)```

formating convention for nested combinations **pretty-printing**:

```(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))```
```
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))
```

## 1.1.2 Naming / Environment

use keyword ```define```

```(define  foobar 2)```

```foobar``` will display ```2```

the memory to keep tracks of this naming = **global environment**

## 1.1.3 Evaluating Combinations 

procedure to evaluate combinations:

1. Evaluate the subexpressions 
2. Apply procedure operator + arguments = values of other subexpressions

see tree accumulation

## 1.1.4 Compound Procedures

procedure definitions
```(define (<name> <parameters>) <body>)``` 

```
(define (sum-of-square x y)
        (+ (square x) (square y)))
```
```
(define (f a)
    (sum-of-squares (+ a 1) (* a 2)))
```

## 1.1.5 substituion model for procedure application:

```
(f 5)

(sum-of-squares (+ a 1) (* a 2)))

(sum-of-squares (+ 5 1) (* 5 2)))

(+ (square 6) (square 10))

(+ (* 6 6) (* 10 10))

(+ 36 100)

136
```

There is also an other way to evaluate, called **normal order evaluation**


## 1.1.6 Conditional Expressions and Predicates

keyword ```cond```
```
(cond (<predicate1> <consequent_expression1>)
      (<predicate2> <consequent_expression2>)
      (<predicate3> <consequent_expression3>)
      ...
      (<predicateX> <consequent_expressionX>)
)
```

```
(define (absoluteOf x)
  (cond ((< x 0)(- x))
        (else x)
  )
)
```

if only two case, keyword ```if```
```
(if <preduicate> <consequent> <alternative>)
```

##  1.1.8 Procedures as Black-Box Abstractions

block structure:
``` 
(define (sqrt x)
      (define (sqrt-iter guess)
            (if (good-enough? guess (improve guess x))
                  guess
                  (sqrt-iter (improve guess x) x)))
      (define (improve guess)
            (average guess (/ x guess)))

      (define (average y) 
            (/ (+ x y) 2))

      (define (good-enough? previous-guess guess)
             < (abs (/ (- guess previous-guess) guess)) 0.0000000001))

  
      (sqrt-iter 1.0))
```