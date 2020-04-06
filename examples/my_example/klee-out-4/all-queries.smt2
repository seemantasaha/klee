; Query 0 -- Type: InitialValues, Instructions: 3654
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun Test () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert true )
(check-sat)
(get-value ( (select Test (_ bv0 32) ) ) )
(get-value ( (select Test (_ bv1 32) ) ) )
(get-value ( (select Test (_ bv2 32) ) ) )
(get-value ( (select Test (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.656000e-06s
;   Solvable: true
;     Test = [0,0,0,0]

