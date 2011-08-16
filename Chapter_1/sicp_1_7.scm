(define (square x)
  (* x x))

(define (good-enough? guess x old)
  (if (< (/ guess old) 1)
    (< (abs (- (square guess) x)) 0.001)
    (display 1)))



(define (average x y)
  (/ (+ x y) 2))


(define (improve guess x)
  (average guess(/ x guess)))


(define (sqrt-iter guess x old)
	(if (good-enough? guess x old)
	  guess
	  (sqrt-iter (improve guess x)
		     x
		     guess)))


(define (sqrt x)
  (sqrt-iter 1.0 x 10))


(display(sqrt 0.00000123456789)) (newline)
(display(sqrt 123456789)) (newline)


; Explain how the sqrt test is inadequate for very large or very small numbers.
;
; Numbers have a limited precision based on the number of bits within a word. A word can only hold a certain number of "places" that represent the precision of the number. As a result, very large numbers tend to "use" up their precision in representing the large whole number before the decimal. On the other hand, very small numbers "use up" their precision in representing the smallness of its number. 
