; Exercise 1.9 
;
; Are the following processes iterative or recursive ?
;
;

; Procedure A
(define (+ a b) 
  (if (= a 0)
    b
    (inc (+ (dec a) b))))


; Procedure B
(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))


; I would say Procedure A is recursive, and Procedure B is iterative;
;
; Procedure A is recursive because the + operator is applied to the arguments before the inc procedure is evaluated; as a result, the scope drops into another instance of the + procedure, where the arguments are again evaluated first in terms as arguments for the + operator. This continues until argument <a> is equal to 0. When <a> reaches 0, all of the substituted arguments are calculated from the bottom up.
;
;
; Procedure B is an iterative process because the + operator is evaluated after the dec and inc procedures are applied to the <a> and <b> arguments. The arguments become reprensentations of the current "state" of the procedure.
