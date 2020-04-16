; Query 0 -- Type: InitialValues, Instructions: 21
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 3.452905e-02s
;   Solvable: true

; Query 1 -- Type: InitialValues, Instructions: 21
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv94 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.216856e-02s
;   Solvable: true
;     re = [94,94,94,94,94,94,94]

; Query 2 -- Type: InitialValues, Instructions: 49
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.919266e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 3 -- Type: InitialValues, Instructions: 67
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.760015e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 4 -- Type: InitialValues, Instructions: 87
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.958807e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 5 -- Type: InitialValues, Instructions: 99
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.552383e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 6 -- Type: InitialValues, Instructions: 102
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv36 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.784236e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 7 -- Type: InitialValues, Instructions: 109
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv36 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.913235e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 8 -- Type: InitialValues, Instructions: 150
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv46 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 5.387912e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 9 -- Type: InitialValues, Instructions: 155
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.867919e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 10 -- Type: InitialValues, Instructions: 226
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv46 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.104788e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 11 -- Type: InitialValues, Instructions: 247
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv104 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.602091e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 12 -- Type: InitialValues, Instructions: 313
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv104 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.019826e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 13 -- Type: InitialValues, Instructions: 321
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.726786e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 14 -- Type: InitialValues, Instructions: 350
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.436171e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 15 -- Type: InitialValues, Instructions: 365
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv36 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.313798e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 16 -- Type: InitialValues, Instructions: 417
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.706221e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 17 -- Type: InitialValues, Instructions: 424
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv36 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.921192e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 18 -- Type: InitialValues, Instructions: 517
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.697351e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 19 -- Type: InitialValues, Instructions: 544
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv46 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.077605e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 20 -- Type: InitialValues, Instructions: 549
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.031228e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 21 -- Type: InitialValues, Instructions: 566
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv36 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.812898e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 22 -- Type: InitialValues, Instructions: 604
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv104 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.937451e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 23 -- Type: InitialValues, Instructions: 612
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv36 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.010395e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 24 -- Type: InitialValues, Instructions: 622
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv46 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.709109e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 25 -- Type: InitialValues, Instructions: 659
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv104 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.059897e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 26 -- Type: InitialValues, Instructions: 805
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv104 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.649925e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 27 -- Type: InitialValues, Instructions: 867
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.891537e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 28 -- Type: InitialValues, Instructions: 906
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv104 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.489980e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 29 -- Type: InitialValues, Instructions: 933
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv46 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.836751e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 30 -- Type: InitialValues, Instructions: 1020
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv46 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.962010e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 31 -- Type: InitialValues, Instructions: 1076
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.606492e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 32 -- Type: InitialValues, Instructions: 1237
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.150088e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 33 -- Type: InitialValues, Instructions: 1237
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.186424e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 34 -- Type: InitialValues, Instructions: 1252
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  re (_ bv6 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.064601e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 35 -- Type: InitialValues, Instructions: 1288
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv36 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.954228e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 36 -- Type: InitialValues, Instructions: 1290
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv36 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.997250e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 37 -- Type: InitialValues, Instructions: 1311
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.935316e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 38 -- Type: InitialValues, Instructions: 1410
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv42 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.008662e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 39 -- Type: InitialValues, Instructions: 1428
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.023630e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 40 -- Type: InitialValues, Instructions: 1621
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  (_ bv36 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.777979e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 41 -- Type: InitialValues, Instructions: 1720
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv6 32) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv6 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.410409e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 42 -- Type: InitialValues, Instructions: 1781
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.837634e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 43 -- Type: InitialValues, Instructions: 1781
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.792785e-02s
;   Solvable: false

; Query 44 -- Type: InitialValues, Instructions: 1796
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv104 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.541887e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 45 -- Type: InitialValues, Instructions: 1949
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.914760e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 46 -- Type: InitialValues, Instructions: 1949
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.061831e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 47 -- Type: InitialValues, Instructions: 1997
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.071191e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 48 -- Type: InitialValues, Instructions: 2021
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv104 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.995338e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 49 -- Type: InitialValues, Instructions: 2252
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.908502e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 50 -- Type: InitialValues, Instructions: 2261
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv36 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.889673e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 51 -- Type: InitialValues, Instructions: 2306
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv46 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.115676e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 52 -- Type: InitialValues, Instructions: 2570
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv46 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.109791e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 53 -- Type: InitialValues, Instructions: 2822
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.810134e-02s
;   Solvable: false

; Query 54 -- Type: InitialValues, Instructions: 2945
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv46 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.266911e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 55 -- Type: InitialValues, Instructions: 3231
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.195792e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 56 -- Type: InitialValues, Instructions: 3336
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.887342e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 57 -- Type: InitialValues, Instructions: 3364
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.929410e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 58 -- Type: InitialValues, Instructions: 3372
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  false (=  (_ bv0 8) (select  re (_ bv6 32) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.801212e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 59 -- Type: InitialValues, Instructions: 3678
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv104 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.791527e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 60 -- Type: InitialValues, Instructions: 3795
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.016135e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 61 -- Type: InitialValues, Instructions: 3795
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.751012e-02s
;   Solvable: false

; Query 62 -- Type: InitialValues, Instructions: 3822
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv104 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.327189e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 63 -- Type: InitialValues, Instructions: 3898
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.839115e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 64 -- Type: InitialValues, Instructions: 3898
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.936812e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 65 -- Type: InitialValues, Instructions: 3948
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv101 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.031139e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 66 -- Type: InitialValues, Instructions: 3979
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.843767e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 67 -- Type: InitialValues, Instructions: 3979
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (=  (_ bv101 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.256852e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 68 -- Type: InitialValues, Instructions: 4541
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.256275e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 69 -- Type: InitialValues, Instructions: 4678
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.683430e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 70 -- Type: InitialValues, Instructions: 4678
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.806174e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 71 -- Type: InitialValues, Instructions: 4991
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv46 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.363382e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 72 -- Type: InitialValues, Instructions: 5030
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.789050e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 73 -- Type: InitialValues, Instructions: 5502
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.221310e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 74 -- Type: InitialValues, Instructions: 5941
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv104 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 4.084559e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 75 -- Type: InitialValues, Instructions: 6470
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.288555e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 76 -- Type: InitialValues, Instructions: 7056
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.026280e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 77 -- Type: InitialValues, Instructions: 7507
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv36 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.982711e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 78 -- Type: InitialValues, Instructions: 7839
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.999743e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 79 -- Type: InitialValues, Instructions: 7896
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.722969e-02s
;   Solvable: false

; Query 80 -- Type: InitialValues, Instructions: 7965
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv104 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.030865e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 81 -- Type: InitialValues, Instructions: 8088
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv0 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv0 32) ) ) (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.913176e-02s
;   Solvable: false

; Query 82 -- Type: InitialValues, Instructions: 8409
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.133670e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 83 -- Type: InitialValues, Instructions: 8571
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv36 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.937415e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 84 -- Type: InitialValues, Instructions: 8813
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.863682e-02s
;   Solvable: false

; Query 85 -- Type: InitialValues, Instructions: 9656
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.213044e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 86 -- Type: InitialValues, Instructions: 9695
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.910617e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 87 -- Type: InitialValues, Instructions: 9695
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (=  (_ bv101 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.769541e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 88 -- Type: InitialValues, Instructions: 10315
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.847439e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 89 -- Type: InitialValues, Instructions: 10315
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.384063e-02s
;   Solvable: false

; Query 90 -- Type: InitialValues, Instructions: 10481
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv36 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.223031e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 91 -- Type: InitialValues, Instructions: 11438
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.999713e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 92 -- Type: InitialValues, Instructions: 11565
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.891079e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 93 -- Type: InitialValues, Instructions: 11565
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.908258e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 94 -- Type: InitialValues, Instructions: 12039
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.198351e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 95 -- Type: InitialValues, Instructions: 12039
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.840228e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 96 -- Type: InitialValues, Instructions: 12620
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv46 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.748317e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 97 -- Type: InitialValues, Instructions: 12926
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.135960e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 98 -- Type: InitialValues, Instructions: 13118
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv108 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.149010e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 99 -- Type: InitialValues, Instructions: 13198
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.922194e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 100 -- Type: InitialValues, Instructions: 15048
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.390225e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 101 -- Type: InitialValues, Instructions: 15321
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.057556e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 102 -- Type: InitialValues, Instructions: 15621
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv46 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.865188e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 103 -- Type: InitialValues, Instructions: 15707
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv101 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.746161e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 104 -- Type: InitialValues, Instructions: 16152
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.830819e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 105 -- Type: InitialValues, Instructions: 16204
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv46 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.844486e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 106 -- Type: InitialValues, Instructions: 16383
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.777641e-02s
;   Solvable: false

; Query 107 -- Type: InitialValues, Instructions: 17376
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv104 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.291018e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 108 -- Type: InitialValues, Instructions: 17425
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv101 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.632443e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 109 -- Type: InitialValues, Instructions: 17525
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.002294e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 110 -- Type: InitialValues, Instructions: 19624
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.903297e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 111 -- Type: InitialValues, Instructions: 19635
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv108 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.612850e-02s
;   Solvable: false

; Query 112 -- Type: InitialValues, Instructions: 19901
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.830289e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 113 -- Type: InitialValues, Instructions: 20004
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv101 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.867129e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 114 -- Type: InitialValues, Instructions: 20151
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.145841e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 115 -- Type: InitialValues, Instructions: 21317
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv104 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.840376e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 116 -- Type: InitialValues, Instructions: 21750
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.602172e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 117 -- Type: InitialValues, Instructions: 22059
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.750943e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 118 -- Type: InitialValues, Instructions: 22059
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.187886e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 119 -- Type: InitialValues, Instructions: 22509
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.535192e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 120 -- Type: InitialValues, Instructions: 22903
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.971551e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 121 -- Type: InitialValues, Instructions: 25093
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.581226e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 122 -- Type: InitialValues, Instructions: 25093
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.089568e-02s
;   Solvable: false

; Query 123 -- Type: InitialValues, Instructions: 25677
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv0 32) ) ) (=  false (=  (_ bv94 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv0 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv0 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.847997e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 124 -- Type: InitialValues, Instructions: 26035
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.075598e-02s
;   Solvable: false

; Query 125 -- Type: InitialValues, Instructions: 26493
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv101 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.116065e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 126 -- Type: InitialValues, Instructions: 26797
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv101 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.040249e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 127 -- Type: InitialValues, Instructions: 26860
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.248420e-02s
;   Solvable: false

; Query 128 -- Type: InitialValues, Instructions: 28286
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.561397e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 129 -- Type: InitialValues, Instructions: 28286
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.650971e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 130 -- Type: InitialValues, Instructions: 32528
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.901371e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 131 -- Type: InitialValues, Instructions: 39004
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.425041e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 132 -- Type: InitialValues, Instructions: 39443
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv108 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.969557e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 133 -- Type: InitialValues, Instructions: 39795
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv111 8) (select  re (_ bv0 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.760314e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 134 -- Type: InitialValues, Instructions: 40509
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.076449e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 135 -- Type: InitialValues, Instructions: 40509
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.693105e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 136 -- Type: InitialValues, Instructions: 41866
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv5 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv5 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv5 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.288868e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 137 -- Type: InitialValues, Instructions: 44065
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv108 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.734260e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 138 -- Type: InitialValues, Instructions: 44180
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv104 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.282914e-02s
;   Solvable: false

; Query 139 -- Type: InitialValues, Instructions: 47642
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 5.070005e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 140 -- Type: InitialValues, Instructions: 47642
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv1 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv1 32) ) ) (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.862830e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 141 -- Type: InitialValues, Instructions: 50854
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv108 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.734640e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 142 -- Type: InitialValues, Instructions: 50878
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv108 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.110358e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 143 -- Type: InitialValues, Instructions: 51167
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.287166e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 144 -- Type: InitialValues, Instructions: 55731
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv108 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.949258e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 145 -- Type: InitialValues, Instructions: 59311
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv3 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv104 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.237106e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 146 -- Type: InitialValues, Instructions: 61278
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.584518e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 147 -- Type: InitialValues, Instructions: 63455
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.398082e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 148 -- Type: InitialValues, Instructions: 64187
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv111 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.098228e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 149 -- Type: InitialValues, Instructions: 67788
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.397426e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 150 -- Type: InitialValues, Instructions: 67788
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  false (=  (_ bv111 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv101 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.349056e-02s
;   Solvable: false

; Query 151 -- Type: InitialValues, Instructions: 72224
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv36 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 5.337915e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 152 -- Type: InitialValues, Instructions: 75234
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.836318e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 153 -- Type: InitialValues, Instructions: 75234
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.104649e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 154 -- Type: InitialValues, Instructions: 82017
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.997998e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 155 -- Type: InitialValues, Instructions: 86095
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv111 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.911412e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 156 -- Type: InitialValues, Instructions: 89685
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv111 8) (select  re (_ bv3 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.683239e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 157 -- Type: InitialValues, Instructions: 90147
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv101 8) (select  re (_ bv5 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.330046e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 158 -- Type: InitialValues, Instructions: 92156
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.667752e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 159 -- Type: InitialValues, Instructions: 105265
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv101 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.589823e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 160 -- Type: InitialValues, Instructions: 116327
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv111 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.310243e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 161 -- Type: InitialValues, Instructions: 122437
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.801717e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 162 -- Type: InitialValues, Instructions: 122437
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.916538e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 163 -- Type: InitialValues, Instructions: 123047
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv101 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.863202e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 164 -- Type: InitialValues, Instructions: 127212
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (and  (and  (=  (_ bv111 8) (select  re (_ bv1 32) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv108 8) (select  re (_ bv1 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv1 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.814495e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 165 -- Type: InitialValues, Instructions: 127495
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.654739e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 166 -- Type: InitialValues, Instructions: 127495
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.429917e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 167 -- Type: InitialValues, Instructions: 139150
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.421030e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 168 -- Type: InitialValues, Instructions: 142676
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv42 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.285659e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 169 -- Type: InitialValues, Instructions: 152679
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv108 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.474591e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 170 -- Type: InitialValues, Instructions: 164515
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv111 8) (select  re (_ bv1 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.399601e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 171 -- Type: InitialValues, Instructions: 192406
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv111 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.155831e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 172 -- Type: InitialValues, Instructions: 199717
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (and  (=  false (=  (_ bv111 8) (select  re (_ bv4 32) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.062798e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 173 -- Type: InitialValues, Instructions: 298558
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv108 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.005033e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 174 -- Type: InitialValues, Instructions: 362922
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv2 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv2 32) ) ) ) ) (or  (=  (_ bv111 8) (select  re (_ bv2 32) ) ) (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.027483e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 175 -- Type: InitialValues, Instructions: 364887
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv104 8) (select  re (_ bv2 32) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv2 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv2 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.655577e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 176 -- Type: InitialValues, Instructions: 374537
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv104 8) (select  re (_ bv2 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.309797e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 177 -- Type: InitialValues, Instructions: 448071
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv111 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.772671e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 178 -- Type: InitialValues, Instructions: 505572
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv42 8) (select  re (_ bv3 32) ) ) ) (=  false (=  (_ bv0 8) (select  re (_ bv3 32) ) ) ) ) (or  (=  (_ bv111 8) (select  re (_ bv3 32) ) ) (=  (_ bv46 8) (select  re (_ bv3 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.164824e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 179 -- Type: InitialValues, Instructions: 772768
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (or  (=  (_ bv108 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) (or  (=  (_ bv111 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.230768e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 180 -- Type: InitialValues, Instructions: 860175
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (=  false (=  (_ bv0 8) (select  re (_ bv4 32) ) ) ) (or  (=  (_ bv111 8) (select  re (_ bv4 32) ) ) (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.717103e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 181 -- Type: InitialValues, Instructions: 1434897
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (and  (and  (=  (_ bv104 8) (select  re (_ bv4 32) ) ) (=  false (=  (_ bv101 8) (select  re (_ bv4 32) ) ) ) ) (=  false (=  (_ bv46 8) (select  re (_ bv4 32) ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.330313e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 182 -- Type: InitialValues, Instructions: 2636589
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (=  (_ bv104 8) (select  re (_ bv4 32) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 3.153887e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

