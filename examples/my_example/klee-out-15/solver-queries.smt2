; Query 0 -- Type: InitialValues, Instructions: 16
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 1.842897e-02s
;   Solvable: true

; Query 1 -- Type: InitialValues, Instructions: 16
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (bvslt  ((_ sign_extend 16)  (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(exit)
;   OK -- Elapsed: 1.282371e-02s
;   Solvable: true
;     a = [128,0]

