;;guess  quotient average
;;  1    (/ 2 1 )  (/ (+ 2 1) 2)
;; 1.5   (/ 2 1.5) (/ (+ 1.3333 1.5) 2)


(define (sqrt-iterer guess x)
   (if  (< (- (* guess guess) x) 0.001) (guess) (sqrt-iterer (/ (+ (/ x guess) guess)) x)
)