; Query 0 -- Type: InitialValues, Instructions: 34
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 1.917541e-02s
;   Solvable: true

; Query 1 -- Type: InitialValues, Instructions: 34
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.473693e-02s
;   Solvable: true
;     input = [1,0,0,0]

; Query 2 -- Type: InitialValues, Instructions: 42
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.661597e-02s
;   Solvable: true
;     input = [2,0,0,0]

; Query 3 -- Type: InitialValues, Instructions: 49
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv3 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 2.032087e-02s
;   Solvable: true
;     input = [3,0,0,0]

; Query 4 -- Type: InitialValues, Instructions: 53
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.778492e-02s
;   Solvable: true
;     input = [2,0,0,0]

; Query 5 -- Type: InitialValues, Instructions: 56
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv3 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.220721e-02s
;   Solvable: true
;     input = [3,0,0,0]

; Query 6 -- Type: InitialValues, Instructions: 58
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv4 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv3 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.615935e-02s
;   Solvable: true
;     input = [4,0,0,0]

; Query 7 -- Type: InitialValues, Instructions: 64
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv4 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.314492e-02s
;   Solvable: true
;     input = [4,0,0,0]

; Query 8 -- Type: InitialValues, Instructions: 66
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv5 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv3 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv4 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.729550e-02s
;   Solvable: true
;     input = [5,0,0,0]

; Query 9 -- Type: InitialValues, Instructions: 71
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv5 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.325473e-02s
;   Solvable: true
;     input = [5,0,0,0]

; Query 10 -- Type: InitialValues, Instructions: 74
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  (_ bv6 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv3 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv4 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv5 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.636933e-02s
;   Solvable: true
;     input = [6,0,0,0]

; Query 11 -- Type: InitialValues, Instructions: 79
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (and  (=  (_ bv7 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv1 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv2 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv3 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv4 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv5 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) (=  false (=  (_ bv6 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.595477e-02s
;   Solvable: true
;     input = [7,0,0,0]

; Query 12 -- Type: InitialValues, Instructions: 87
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv6 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.614174e-02s
;   Solvable: true
;     input = [6,0,0,0]

; Query 13 -- Type: InitialValues, Instructions: 90
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun input () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv7 32) (concat  (select  input (_ bv3 32) ) (concat  (select  input (_ bv2 32) ) (concat  (select  input (_ bv1 32) ) (select  input (_ bv0 32) ) ) ) ) ) )
(check-sat)
(get-value ( (select input (_ bv0 32) ) ) )
(get-value ( (select input (_ bv1 32) ) ) )
(get-value ( (select input (_ bv2 32) ) ) )
(get-value ( (select input (_ bv3 32) ) ) )
(exit)
;   OK -- Elapsed: 1.627692e-02s
;   Solvable: true
;     input = [7,0,0,0]

