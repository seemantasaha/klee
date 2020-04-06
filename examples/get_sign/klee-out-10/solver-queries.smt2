; Query 0 -- Type: InitialValues, Instructions: 15
(set-logic QF_AUFLIA )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 2.111252e-02s
;   Solvable: true

; Query 1 -- Type: InitialValues, Instructions: 15
(set-option :produce-models true)
(set-logic QF_AUFLIA )
(declare-fun a () Int )
(assert (=  false (=  0 a) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 2.439827e-02s
;   Solvable: true
;     a = [255,0,0,0]

; Query 2 -- Type: InitialValues, Instructions: 23
(set-option :produce-models true)
(set-logic QF_AUFLIA )
(declare-fun a () Int )
(assert (and  (<  a 0 ) (=  false (=  0 a ) ) ) )
(check-sat)
(exit)
;   OK -- Elapsed: 1.264602e-02s
;   Solvable: true
;     a = [0,0,0,128]

