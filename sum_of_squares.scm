(define (sum-of-squares-of-the-two-largest-numbers x y z) 
    (if (> x y) 
        (if (> y z) 
            (+ (* x x) (* y y)) 
            (+ (* x x) (* z z))
        ) 
        (if (> x z) 
            (+ (* z z) (* y y))
            (+ (* y y) (* z z))
        )
    )
)