;;guess  quotient average
;;  1    (/ 2 1 )  (/ (+ 2 1) 2)
;; 1.5   (/ 2 1.5) (/ (+ 1.3333 1.5) 2)
(define (sqrt-iterer guess x)
   (if (good-enough? guess x)
       guess 
       (sqrt-iterer (improve-guess guess x) x)
   )
)

(define (improve-guess guess x)
  (/ (+ (/ x guess) guess) 2) 
)

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001)
)