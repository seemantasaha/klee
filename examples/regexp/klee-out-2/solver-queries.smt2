; Query 0 -- Type: InitialValues, Instructions: 21
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 2.865797e-02s
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
;   OK -- Elapsed: 1.289831e-02s
;   Solvable: true
;     re = [94,94,94,94,94,94,94]

; Query 2 -- Type: InitialValues, Instructions: 49
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  false (=  (_ bv94 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.424756e-02s
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
;   OK -- Elapsed: 1.123657e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 4 -- Type: InitialValues, Instructions: 73
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
;   OK -- Elapsed: 1.235482e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 5 -- Type: InitialValues, Instructions: 82
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.202712e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 6 -- Type: InitialValues, Instructions: 101
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
;   OK -- Elapsed: 1.335802e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 7 -- Type: InitialValues, Instructions: 105
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.168364e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 8 -- Type: InitialValues, Instructions: 138
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.292302e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 9 -- Type: InitialValues, Instructions: 185
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.100055e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 10 -- Type: InitialValues, Instructions: 208
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.030631e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 11 -- Type: InitialValues, Instructions: 298
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.221242e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 12 -- Type: InitialValues, Instructions: 311
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
;   OK -- Elapsed: 1.315319e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 13 -- Type: InitialValues, Instructions: 313
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.339561e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 14 -- Type: InitialValues, Instructions: 317
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
;   OK -- Elapsed: 1.371838e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 15 -- Type: InitialValues, Instructions: 321
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
;   OK -- Elapsed: 1.323190e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 16 -- Type: InitialValues, Instructions: 426
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
;   OK -- Elapsed: 1.147814e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 17 -- Type: InitialValues, Instructions: 447
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.234287e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 18 -- Type: InitialValues, Instructions: 470
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
;   OK -- Elapsed: 1.232099e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 19 -- Type: InitialValues, Instructions: 476
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.383166e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 20 -- Type: InitialValues, Instructions: 530
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.204345e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 21 -- Type: InitialValues, Instructions: 538
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.207471e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 22 -- Type: InitialValues, Instructions: 540
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
;   OK -- Elapsed: 1.296503e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 23 -- Type: InitialValues, Instructions: 625
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv104 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.201246e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 24 -- Type: InitialValues, Instructions: 645
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.408942e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 25 -- Type: InitialValues, Instructions: 756
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.161134e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 26 -- Type: InitialValues, Instructions: 774
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv104 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.432368e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 27 -- Type: InitialValues, Instructions: 811
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
;   OK -- Elapsed: 1.237787e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 28 -- Type: InitialValues, Instructions: 842
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.369224e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 29 -- Type: InitialValues, Instructions: 1011
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
;   OK -- Elapsed: 1.345332e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 30 -- Type: InitialValues, Instructions: 1123
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
;   OK -- Elapsed: 1.220348e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 31 -- Type: InitialValues, Instructions: 1187
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.403564e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 32 -- Type: InitialValues, Instructions: 1187
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.294787e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 33 -- Type: InitialValues, Instructions: 1190
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
;   OK -- Elapsed: 1.312521e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 34 -- Type: InitialValues, Instructions: 1195
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.273612e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 35 -- Type: InitialValues, Instructions: 1224
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.266324e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 36 -- Type: InitialValues, Instructions: 1341
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
;   OK -- Elapsed: 1.308348e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 37 -- Type: InitialValues, Instructions: 1370
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.161216e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 38 -- Type: InitialValues, Instructions: 1431
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
;   OK -- Elapsed: 1.404495e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 39 -- Type: InitialValues, Instructions: 1621
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  (_ bv36 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.140241e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 40 -- Type: InitialValues, Instructions: 1785
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.394439e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 41 -- Type: InitialValues, Instructions: 1785
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.229141e-02s
;   Solvable: false

; Query 42 -- Type: InitialValues, Instructions: 1794
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (=  false (=  (_ bv94 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.427442e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 43 -- Type: InitialValues, Instructions: 1794
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.399862e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 44 -- Type: InitialValues, Instructions: 1802
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv6 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.280826e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 45 -- Type: InitialValues, Instructions: 2041
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.528817e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 46 -- Type: InitialValues, Instructions: 2119
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.251293e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 47 -- Type: InitialValues, Instructions: 2166
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv104 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.419735e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 48 -- Type: InitialValues, Instructions: 2276
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.240357e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 49 -- Type: InitialValues, Instructions: 2298
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.331064e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 50 -- Type: InitialValues, Instructions: 2365
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv104 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.302320e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 51 -- Type: InitialValues, Instructions: 2370
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
;   OK -- Elapsed: 1.307927e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 52 -- Type: InitialValues, Instructions: 2675
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
;   OK -- Elapsed: 1.321168e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 53 -- Type: InitialValues, Instructions: 2847
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.102317e-02s
;   Solvable: false

; Query 54 -- Type: InitialValues, Instructions: 2966
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
;   OK -- Elapsed: 1.419941e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 55 -- Type: InitialValues, Instructions: 3009
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.144984e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 56 -- Type: InitialValues, Instructions: 3250
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.365434e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 57 -- Type: InitialValues, Instructions: 3412
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.264684e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 58 -- Type: InitialValues, Instructions: 3500
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.331123e-02s
;   Solvable: false

; Query 59 -- Type: InitialValues, Instructions: 3622
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.477965e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 60 -- Type: InitialValues, Instructions: 3682
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.374826e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 61 -- Type: InitialValues, Instructions: 3857
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
;   OK -- Elapsed: 1.341360e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 62 -- Type: InitialValues, Instructions: 4172
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.380979e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 63 -- Type: InitialValues, Instructions: 4427
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.462284e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 64 -- Type: InitialValues, Instructions: 4427
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.283628e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 65 -- Type: InitialValues, Instructions: 4465
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.329884e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 66 -- Type: InitialValues, Instructions: 4465
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.316072e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 67 -- Type: InitialValues, Instructions: 4513
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.460707e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 68 -- Type: InitialValues, Instructions: 4771
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.251479e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 69 -- Type: InitialValues, Instructions: 5322
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.499892e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 70 -- Type: InitialValues, Instructions: 5322
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.172209e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 71 -- Type: InitialValues, Instructions: 5389
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.372119e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 72 -- Type: InitialValues, Instructions: 5391
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
;   OK -- Elapsed: 1.258722e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 73 -- Type: InitialValues, Instructions: 6322
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.457693e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 74 -- Type: InitialValues, Instructions: 6449
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv104 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.421017e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 75 -- Type: InitialValues, Instructions: 6685
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.404370e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 76 -- Type: InitialValues, Instructions: 6928
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.437415e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 77 -- Type: InitialValues, Instructions: 7487
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.267776e-02s
;   Solvable: false

; Query 78 -- Type: InitialValues, Instructions: 7598
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
;   OK -- Elapsed: 1.359402e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 79 -- Type: InitialValues, Instructions: 7821
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.333814e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 80 -- Type: InitialValues, Instructions: 7821
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.328157e-02s
;   Solvable: false

; Query 81 -- Type: InitialValues, Instructions: 7907
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.272921e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 82 -- Type: InitialValues, Instructions: 8066
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.546869e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 83 -- Type: InitialValues, Instructions: 8301
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.240806e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 84 -- Type: InitialValues, Instructions: 9230
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.585608e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 85 -- Type: InitialValues, Instructions: 9256
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.142965e-02s
;   Solvable: false

; Query 86 -- Type: InitialValues, Instructions: 9537
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
;   OK -- Elapsed: 1.486395e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 87 -- Type: InitialValues, Instructions: 10235
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
;   OK -- Elapsed: 1.240033e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 88 -- Type: InitialValues, Instructions: 10373
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
;   OK -- Elapsed: 1.350948e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 89 -- Type: InitialValues, Instructions: 10620
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.334807e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 90 -- Type: InitialValues, Instructions: 10620
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.343726e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 91 -- Type: InitialValues, Instructions: 10907
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.299440e-02s
;   Solvable: false

; Query 92 -- Type: InitialValues, Instructions: 10929
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
;   OK -- Elapsed: 1.305205e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 93 -- Type: InitialValues, Instructions: 11077
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.264077e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 94 -- Type: InitialValues, Instructions: 12307
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.414888e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 95 -- Type: InitialValues, Instructions: 12307
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.390179e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 96 -- Type: InitialValues, Instructions: 12324
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv101 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.429640e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 97 -- Type: InitialValues, Instructions: 12324
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.471120e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 98 -- Type: InitialValues, Instructions: 13660
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.307794e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 99 -- Type: InitialValues, Instructions: 13788
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
;   OK -- Elapsed: 1.371902e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 100 -- Type: InitialValues, Instructions: 14150
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.181873e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 101 -- Type: InitialValues, Instructions: 14645
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.554311e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 102 -- Type: InitialValues, Instructions: 15679
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
;   OK -- Elapsed: 1.184050e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 103 -- Type: InitialValues, Instructions: 15764
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.335020e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 104 -- Type: InitialValues, Instructions: 16133
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.181247e-02s
;   Solvable: false

; Query 105 -- Type: InitialValues, Instructions: 16407
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.382610e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 106 -- Type: InitialValues, Instructions: 16745
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
;   OK -- Elapsed: 1.263581e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 107 -- Type: InitialValues, Instructions: 17602
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.405060e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 108 -- Type: InitialValues, Instructions: 17658
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
;   OK -- Elapsed: 2.019782e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 109 -- Type: InitialValues, Instructions: 19023
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.213417e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 110 -- Type: InitialValues, Instructions: 19305
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.113737e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 111 -- Type: InitialValues, Instructions: 19762
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.009850e-02s
;   Solvable: false

; Query 112 -- Type: InitialValues, Instructions: 20356
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.461252e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 113 -- Type: InitialValues, Instructions: 20377
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.483766e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 114 -- Type: InitialValues, Instructions: 20377
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.215876e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 115 -- Type: InitialValues, Instructions: 20680
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv108 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.353603e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 116 -- Type: InitialValues, Instructions: 22559
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
;   OK -- Elapsed: 1.213820e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 117 -- Type: InitialValues, Instructions: 23605
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv101 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.376784e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 118 -- Type: InitialValues, Instructions: 23605
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.363527e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 119 -- Type: InitialValues, Instructions: 23618
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.325288e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 120 -- Type: InitialValues, Instructions: 23983
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
;   OK -- Elapsed: 1.321379e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 121 -- Type: InitialValues, Instructions: 24820
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.350256e-02s
;   Solvable: false

; Query 122 -- Type: InitialValues, Instructions: 25145
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.550535e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 123 -- Type: InitialValues, Instructions: 25145
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.458734e-02s
;   Solvable: false

; Query 124 -- Type: InitialValues, Instructions: 25881
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.408186e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 125 -- Type: InitialValues, Instructions: 26106
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
;   OK -- Elapsed: 1.470411e-02s
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
;   OK -- Elapsed: 1.209859e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 127 -- Type: InitialValues, Instructions: 26844
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.352438e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 128 -- Type: InitialValues, Instructions: 30031
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.281207e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 129 -- Type: InitialValues, Instructions: 30031
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.355920e-02s
;   Solvable: false

; Query 130 -- Type: InitialValues, Instructions: 35025
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.442337e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 131 -- Type: InitialValues, Instructions: 38461
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.463299e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 132 -- Type: InitialValues, Instructions: 38461
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.383887e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 133 -- Type: InitialValues, Instructions: 39331
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
;   OK -- Elapsed: 1.394804e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 134 -- Type: InitialValues, Instructions: 39925
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
;   OK -- Elapsed: 1.405775e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 135 -- Type: InitialValues, Instructions: 40910
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
;   OK -- Elapsed: 1.546444e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 136 -- Type: InitialValues, Instructions: 41814
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.332284e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 137 -- Type: InitialValues, Instructions: 45262
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.277465e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 138 -- Type: InitialValues, Instructions: 45262
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.359661e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 139 -- Type: InitialValues, Instructions: 45664
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
;   OK -- Elapsed: 1.253863e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 140 -- Type: InitialValues, Instructions: 47244
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.805196e-02s
;   Solvable: false

; Query 141 -- Type: InitialValues, Instructions: 48639
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.292717e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 142 -- Type: InitialValues, Instructions: 49474
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.402927e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 143 -- Type: InitialValues, Instructions: 51506
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.384722e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 144 -- Type: InitialValues, Instructions: 52573
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.644643e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 145 -- Type: InitialValues, Instructions: 55796
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.301974e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 146 -- Type: InitialValues, Instructions: 63243
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.357994e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 147 -- Type: InitialValues, Instructions: 65005
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.612644e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 148 -- Type: InitialValues, Instructions: 65413
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.266283e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 149 -- Type: InitialValues, Instructions: 65413
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.984139e-02s
;   Solvable: false

; Query 150 -- Type: InitialValues, Instructions: 77252
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.401759e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 151 -- Type: InitialValues, Instructions: 77252
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.348478e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 152 -- Type: InitialValues, Instructions: 81132
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.515125e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 153 -- Type: InitialValues, Instructions: 82842
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.463662e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 154 -- Type: InitialValues, Instructions: 84088
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.211760e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 155 -- Type: InitialValues, Instructions: 85706
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
;   OK -- Elapsed: 1.401829e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 156 -- Type: InitialValues, Instructions: 86901
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
;   OK -- Elapsed: 1.254469e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 157 -- Type: InitialValues, Instructions: 91655
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
;   OK -- Elapsed: 1.348846e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 158 -- Type: InitialValues, Instructions: 96012
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.367540e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 159 -- Type: InitialValues, Instructions: 106033
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv108 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.252152e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 160 -- Type: InitialValues, Instructions: 110888
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv108 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.568038e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 161 -- Type: InitialValues, Instructions: 110888
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.263434e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 162 -- Type: InitialValues, Instructions: 114033
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv108 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.353182e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 163 -- Type: InitialValues, Instructions: 114033
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.216254e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 164 -- Type: InitialValues, Instructions: 116327
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
;   OK -- Elapsed: 1.253286e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 165 -- Type: InitialValues, Instructions: 125355
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
;   OK -- Elapsed: 1.377946e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 166 -- Type: InitialValues, Instructions: 127730
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.232883e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 167 -- Type: InitialValues, Instructions: 128691
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.380987e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 168 -- Type: InitialValues, Instructions: 144938
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.250642e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 169 -- Type: InitialValues, Instructions: 153227
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
;   OK -- Elapsed: 1.309954e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 170 -- Type: InitialValues, Instructions: 153484
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.375107e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 171 -- Type: InitialValues, Instructions: 160463
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
;   OK -- Elapsed: 1.461692e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 172 -- Type: InitialValues, Instructions: 189097
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.217605e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 173 -- Type: InitialValues, Instructions: 189166
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
;   OK -- Elapsed: 1.329782e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 174 -- Type: InitialValues, Instructions: 192389
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv111 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.391683e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 175 -- Type: InitialValues, Instructions: 277104
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
;   OK -- Elapsed: 1.222472e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 176 -- Type: InitialValues, Instructions: 360158
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv111 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.313668e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 177 -- Type: InitialValues, Instructions: 360489
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.582940e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 178 -- Type: InitialValues, Instructions: 375393
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
;   OK -- Elapsed: 1.192614e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 179 -- Type: InitialValues, Instructions: 395028
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv111 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.331995e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 180 -- Type: InitialValues, Instructions: 445060
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv111 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.426902e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 181 -- Type: InitialValues, Instructions: 837321
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv111 8) ?B1 ) (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 2.088823e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 182 -- Type: InitialValues, Instructions: 1450573
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (=  (_ bv104 8) ?B1 ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.301458e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 183 -- Type: InitialValues, Instructions: 2623706
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
;   OK -- Elapsed: 1.774941e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

