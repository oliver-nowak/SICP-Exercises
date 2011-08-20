; Ackerman's function



(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

; What are the values for the following expressions ?
;
; 1. (A 1 10)
(display(A 1 10)) (newline)
; 1024

; 2. (A 2 4)
(display (A 2 4)) (newline)
; 65536

; 3. (A 3 3)
(display (A 3 3)) (newline)
; 65536
;
;

(display "----") (newline)

(define (f n) (A 0 n))

(display (f 1)) (newline)
(display (f 2)) (newline)
(display (f 3)) (newline)
; (f, n) = 2n

(display "----") (newline)

(define (g n) (A 1 n))

(display (g 1)) (newline)
(display (g 2)) (newline)
(display (g 3)) (newline)
; (f, n) = 2(pow n)

(display "----") (newline)

(define (h n) (A 2 n))

(display (h 1)) (newline)
(display (h 2)) (newline)
(display (h 3)) (newline)
(display (h 4)) (newline)
; (display (h 5)) (newline)
;
; 1(pow n) + 1(pow n-1)
