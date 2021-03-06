; SCRUBBER: sed -e 's/BOUND_VARIABLE_[0-9]*/BOUND_VARIABLE/'
; EXPECT: sat
; EXPECT: (((f 4) 7))
; EXPECT: ((g (lambda ((BOUND_VARIABLE Int)) 7)))
; EXPECT: ((f (lambda ((BOUND_VARIABLE Int)) 7)))
(set-logic UFLIA)
(set-option :produce-models true)
(define-fun f ((x Int)) Int 7)
(declare-fun g (Int) Int)

(assert (= (g 5) (f 5)))

(check-sat)
(get-value ((f 4)))
(get-value (g))
(get-value (f))
