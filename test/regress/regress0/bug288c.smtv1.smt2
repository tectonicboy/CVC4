(set-option :incremental false)
(set-info :status sat)
(set-logic QF_LIA)
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(check-sat-assuming ( (and (= z 0) (>= (+ (- (* 2 x) (* 2 y)) z) 1)) ))
