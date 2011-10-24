; recursive process

(define (F n)
  (cond ((< n 3) n)
        (else (>= n 3) (+ (+ (F (- n 1)) (* (F (- n 2)) 2)) (* (F (- n 3)) 3))
              )))

; (display (F 2)) (newline)
; (display (F 5)) (newline)
; (display (F 3)) (newline)
 (display (F 4)) (newline)


; iterative process
;
; function F(n) 
;
; int x = 0;
;
; if (n < 3) 
;   n = n;
; else 
;   for (int i = 1; i <= 3; i++) {
;       x = x + (i * F(n - i))
;   }
;
; return x

(define (iter a b c count)
  (if (= count 0)
    a
    (iter b c (+ c(* 2 b) (* 3 a)) (- count 1))
    ))

(define (f n)
  (iter 0 1 2 n))
                    
 


(display (F 2)) (newline)
(display (F 3)) (newline)      
(display (F 4)) (newline)
