#!/usr/local/bin/gsi

(define (pow2 x) (* x x))

(define (return_larger x y) (cond ((> x y) x)
			   ((< x y) y)
			   ((= x y) x)))

(define (sum_of_squares x y) (+ (pow2 x) (pow2 y)))

(define (calc x y z) (sum_of_squares (return_larger x y) (return_larger x z)))
		       

(display (calc 4 2 4)) (newline)
