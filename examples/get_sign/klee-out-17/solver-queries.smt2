; Query 0 -- Type: InitialValues, Instructions: 15
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 2.239881e-02s
;   Solvable: true

; Query 1 -- Type: InitialValues, Instructions: 15
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 32) (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.099570e-02s
;   Solvable: true
;     a = [255,0,0,0]

; Query 2 -- Type: InitialValues, Instructions: 23
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun a () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (concat  (select  a (_ bv3 32) ) (concat  (select  a (_ bv2 32) ) (concat  (select  a (_ bv1 32) ) (select  a (_ bv0 32) ) ) ) ) ) ) (and  (bvslt  ?B1 (_ bv0 32) ) (=  false (=  (_ bv0 32) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select a (_ bv0 32) ) ) )
(get-value ( (select a (_ bv1 32) ) ) )
(get-value ( (select a (_ bv2 32) ) ) )
(get-value ( (select a (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.001658e-02s
;   Solvable: true
;     a = [0,0,0,128]

