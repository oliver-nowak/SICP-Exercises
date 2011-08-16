(define (square x)
  (* x x))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (average x y)
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess(/ x guess)))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))


;(define (sqrt-iter guess x)
;	(if (good-enough? guess x)
;	  guess
;	  (sqrt-iter (improve guess x)
;		     x)))


(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))


(display(sqrt 9)) (newline)
; (display(new-if (= 2 3) 0 5)) (newline)
; (display(new-if (= 1 1) 0 5)) (newline)


; Question: What happens when Alyssa attempts to use this to compute square roots? Explain.
;
; The program never finishes computing the square-root. Instead, it continues to recurse an improved guess and never finding one that falls within the tolerance of 0.001 and returning.
;
;

