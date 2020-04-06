; Query 0 -- Type: InitialValues, Instructions: 21
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 1.335484e-02s
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
;   OK -- Elapsed: 1.288239e-02s
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
;   OK -- Elapsed: 1.299760e-02s
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
;   OK -- Elapsed: 1.189944e-02s
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
;   OK -- Elapsed: 1.221695e-02s
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
;   OK -- Elapsed: 1.160466e-02s
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
;   OK -- Elapsed: 1.294942e-02s
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
;   OK -- Elapsed: 1.220258e-02s
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
;   OK -- Elapsed: 1.288887e-02s
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
;   OK -- Elapsed: 1.212080e-02s
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
;   OK -- Elapsed: 1.202640e-02s
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
;   OK -- Elapsed: 1.776646e-02s
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
;   OK -- Elapsed: 1.256591e-02s
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
;   OK -- Elapsed: 1.459634e-02s
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
;   OK -- Elapsed: 1.177618e-02s
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
;   OK -- Elapsed: 1.371356e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 16 -- Type: InitialValues, Instructions: 423
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
;   OK -- Elapsed: 1.359351e-02s
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
;   OK -- Elapsed: 1.342983e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 18 -- Type: InitialValues, Instructions: 472
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
;   OK -- Elapsed: 1.307883e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 19 -- Type: InitialValues, Instructions: 507
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
;   OK -- Elapsed: 1.153707e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 20 -- Type: InitialValues, Instructions: 511
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
;   OK -- Elapsed: 1.424073e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 21 -- Type: InitialValues, Instructions: 549
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
;   OK -- Elapsed: 1.232447e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 22 -- Type: InitialValues, Instructions: 578
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
;   OK -- Elapsed: 1.378472e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 23 -- Type: InitialValues, Instructions: 636
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
;   OK -- Elapsed: 1.271013e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 24 -- Type: InitialValues, Instructions: 715
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
;   OK -- Elapsed: 1.361842e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 25 -- Type: InitialValues, Instructions: 908
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
;   OK -- Elapsed: 1.180164e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 26 -- Type: InitialValues, Instructions: 929
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
;   OK -- Elapsed: 1.238778e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 27 -- Type: InitialValues, Instructions: 1019
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (=  (_ bv46 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.379106e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 28 -- Type: InitialValues, Instructions: 1056
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
;   OK -- Elapsed: 1.125185e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 29 -- Type: InitialValues, Instructions: 1088
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
;   OK -- Elapsed: 1.377474e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 30 -- Type: InitialValues, Instructions: 1129
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
;   OK -- Elapsed: 1.217790e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 31 -- Type: InitialValues, Instructions: 1213
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
;   OK -- Elapsed: 1.160979e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 32 -- Type: InitialValues, Instructions: 1277
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
;   OK -- Elapsed: 1.479906e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 33 -- Type: InitialValues, Instructions: 1277
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
;   OK -- Elapsed: 1.286422e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 34 -- Type: InitialValues, Instructions: 1329
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
;   OK -- Elapsed: 1.389618e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 35 -- Type: InitialValues, Instructions: 1361
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
;   OK -- Elapsed: 1.250132e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 36 -- Type: InitialValues, Instructions: 1372
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
;   OK -- Elapsed: 1.400789e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 37 -- Type: InitialValues, Instructions: 1467
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
;   OK -- Elapsed: 1.375330e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 38 -- Type: InitialValues, Instructions: 1669
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
;   OK -- Elapsed: 1.386155e-02s
;   Solvable: true
;     re = [42,42,42,42,42,42,42]

; Query 39 -- Type: InitialValues, Instructions: 1796
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
;   OK -- Elapsed: 1.417766e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 40 -- Type: InitialValues, Instructions: 1796
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.296751e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 41 -- Type: InitialValues, Instructions: 1824
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
;   OK -- Elapsed: 1.391805e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 42 -- Type: InitialValues, Instructions: 1824
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
;   OK -- Elapsed: 1.190465e-02s
;   Solvable: false

; Query 43 -- Type: InitialValues, Instructions: 1838
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
;   OK -- Elapsed: 1.473584e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 44 -- Type: InitialValues, Instructions: 1884
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
;   OK -- Elapsed: 1.141402e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 45 -- Type: InitialValues, Instructions: 2069
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
;   OK -- Elapsed: 1.485272e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 46 -- Type: InitialValues, Instructions: 2127
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
;   OK -- Elapsed: 1.241747e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 47 -- Type: InitialValues, Instructions: 2229
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
;   OK -- Elapsed: 1.364264e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 48 -- Type: InitialValues, Instructions: 2243
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
;   OK -- Elapsed: 1.422669e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 49 -- Type: InitialValues, Instructions: 2378
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
;   OK -- Elapsed: 1.228362e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 50 -- Type: InitialValues, Instructions: 2417
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
;   OK -- Elapsed: 1.446973e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 51 -- Type: InitialValues, Instructions: 2437
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
;   OK -- Elapsed: 1.192538e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 52 -- Type: InitialValues, Instructions: 2488
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
;   OK -- Elapsed: 1.413925e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 53 -- Type: InitialValues, Instructions: 2671
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
;   OK -- Elapsed: 1.404401e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 54 -- Type: InitialValues, Instructions: 2913
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
;   OK -- Elapsed: 1.302616e-02s
;   Solvable: false

; Query 55 -- Type: InitialValues, Instructions: 2965
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
;   OK -- Elapsed: 1.305256e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 56 -- Type: InitialValues, Instructions: 3047
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
;   OK -- Elapsed: 1.343511e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 57 -- Type: InitialValues, Instructions: 3162
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
;   OK -- Elapsed: 1.274407e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 58 -- Type: InitialValues, Instructions: 3522
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
;   OK -- Elapsed: 1.354995e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 59 -- Type: InitialValues, Instructions: 3701
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
;   OK -- Elapsed: 1.274859e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 60 -- Type: InitialValues, Instructions: 3795
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv94 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.240243e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 61 -- Type: InitialValues, Instructions: 3795
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
;   OK -- Elapsed: 1.383772e-02s
;   Solvable: false

; Query 62 -- Type: InitialValues, Instructions: 4334
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
;   OK -- Elapsed: 1.244969e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 63 -- Type: InitialValues, Instructions: 4398
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
;   OK -- Elapsed: 1.539975e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 64 -- Type: InitialValues, Instructions: 4398
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.340090e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 65 -- Type: InitialValues, Instructions: 4474
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
;   OK -- Elapsed: 1.408682e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 66 -- Type: InitialValues, Instructions: 4533
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
;   OK -- Elapsed: 1.363224e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 67 -- Type: InitialValues, Instructions: 4533
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
;   OK -- Elapsed: 1.465380e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 68 -- Type: InitialValues, Instructions: 4962
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
;   OK -- Elapsed: 1.490254e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 69 -- Type: InitialValues, Instructions: 5024
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
;   OK -- Elapsed: 1.512118e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 70 -- Type: InitialValues, Instructions: 5027
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
;   OK -- Elapsed: 1.303087e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 71 -- Type: InitialValues, Instructions: 5315
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
;   OK -- Elapsed: 1.409483e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 72 -- Type: InitialValues, Instructions: 5315
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.627319e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 73 -- Type: InitialValues, Instructions: 5890
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
;   OK -- Elapsed: 1.384350e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 74 -- Type: InitialValues, Instructions: 6250
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
;   OK -- Elapsed: 1.345377e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 75 -- Type: InitialValues, Instructions: 6483
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
;   OK -- Elapsed: 1.409515e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 76 -- Type: InitialValues, Instructions: 6628
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv0 32) ) ) ) (and  (and  (and  (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv94 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.314280e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 77 -- Type: InitialValues, Instructions: 7115
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
;   OK -- Elapsed: 1.287242e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 78 -- Type: InitialValues, Instructions: 7491
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
;   OK -- Elapsed: 1.419478e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 79 -- Type: InitialValues, Instructions: 7591
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
;   OK -- Elapsed: 1.311240e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 80 -- Type: InitialValues, Instructions: 7591
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
;   OK -- Elapsed: 1.439326e-02s
;   Solvable: false

; Query 81 -- Type: InitialValues, Instructions: 7717
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
;   OK -- Elapsed: 1.238383e-02s
;   Solvable: false

; Query 82 -- Type: InitialValues, Instructions: 8149
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
;   OK -- Elapsed: 1.547726e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 83 -- Type: InitialValues, Instructions: 8261
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
;   OK -- Elapsed: 1.348357e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 84 -- Type: InitialValues, Instructions: 8742
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
;   OK -- Elapsed: 1.360724e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 85 -- Type: InitialValues, Instructions: 8806
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
;   OK -- Elapsed: 1.277465e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 86 -- Type: InitialValues, Instructions: 8999
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.578342e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 87 -- Type: InitialValues, Instructions: 8999
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
;   OK -- Elapsed: 1.274365e-02s
;   Solvable: false

; Query 88 -- Type: InitialValues, Instructions: 9157
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
;   OK -- Elapsed: 1.528223e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 89 -- Type: InitialValues, Instructions: 10315
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.278528e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 90 -- Type: InitialValues, Instructions: 10315
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
;   OK -- Elapsed: 1.316107e-02s
;   Solvable: false

; Query 91 -- Type: InitialValues, Instructions: 10714
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
;   OK -- Elapsed: 1.291849e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 92 -- Type: InitialValues, Instructions: 11366
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
;   OK -- Elapsed: 1.383009e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 93 -- Type: InitialValues, Instructions: 11430
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
;   OK -- Elapsed: 1.387809e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 94 -- Type: InitialValues, Instructions: 11430
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
;   OK -- Elapsed: 1.417149e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 95 -- Type: InitialValues, Instructions: 12083
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
;   OK -- Elapsed: 1.386292e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 96 -- Type: InitialValues, Instructions: 12083
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
;   OK -- Elapsed: 1.464063e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 97 -- Type: InitialValues, Instructions: 12307
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
;   OK -- Elapsed: 1.478141e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 98 -- Type: InitialValues, Instructions: 12307
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.498648e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 99 -- Type: InitialValues, Instructions: 12652
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
;   OK -- Elapsed: 1.341079e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 100 -- Type: InitialValues, Instructions: 13349
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
;   OK -- Elapsed: 1.409764e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 101 -- Type: InitialValues, Instructions: 14340
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
;   OK -- Elapsed: 1.580841e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 102 -- Type: InitialValues, Instructions: 14482
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (and  (=  (_ bv101 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.489232e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 103 -- Type: InitialValues, Instructions: 14879
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
;   OK -- Elapsed: 1.279658e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 104 -- Type: InitialValues, Instructions: 15129
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
;   OK -- Elapsed: 1.482706e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 105 -- Type: InitialValues, Instructions: 15266
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
;   OK -- Elapsed: 1.265136e-02s
;   Solvable: false

; Query 106 -- Type: InitialValues, Instructions: 15329
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
;   OK -- Elapsed: 1.400265e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 107 -- Type: InitialValues, Instructions: 15689
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
;   OK -- Elapsed: 1.385732e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 108 -- Type: InitialValues, Instructions: 16818
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
;   OK -- Elapsed: 1.420012e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 109 -- Type: InitialValues, Instructions: 16851
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
;   OK -- Elapsed: 1.331160e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 110 -- Type: InitialValues, Instructions: 17132
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
;   OK -- Elapsed: 1.453412e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 111 -- Type: InitialValues, Instructions: 17214
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
;   OK -- Elapsed: 1.491396e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 112 -- Type: InitialValues, Instructions: 19305
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
;   OK -- Elapsed: 1.356189e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 113 -- Type: InitialValues, Instructions: 20053
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
;   OK -- Elapsed: 1.339808e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 114 -- Type: InitialValues, Instructions: 20053
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
;   OK -- Elapsed: 1.543105e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 115 -- Type: InitialValues, Instructions: 20090
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
;   OK -- Elapsed: 1.317652e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 116 -- Type: InitialValues, Instructions: 20397
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
;   OK -- Elapsed: 1.491853e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 117 -- Type: InitialValues, Instructions: 20499
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
;   OK -- Elapsed: 1.204036e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 118 -- Type: InitialValues, Instructions: 21353
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
;   OK -- Elapsed: 1.450719e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 119 -- Type: InitialValues, Instructions: 21714
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
;   OK -- Elapsed: 1.228579e-02s
;   Solvable: false

; Query 120 -- Type: InitialValues, Instructions: 22447
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
;   OK -- Elapsed: 1.524035e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 121 -- Type: InitialValues, Instructions: 23285
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
;   OK -- Elapsed: 1.354316e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 122 -- Type: InitialValues, Instructions: 23285
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
;   OK -- Elapsed: 1.331553e-02s
;   Solvable: false

; Query 123 -- Type: InitialValues, Instructions: 24038
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
;   OK -- Elapsed: 1.391373e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 124 -- Type: InitialValues, Instructions: 24444
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
;   OK -- Elapsed: 1.376455e-02s
;   Solvable: false

; Query 125 -- Type: InitialValues, Instructions: 25748
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
;   OK -- Elapsed: 1.492316e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 126 -- Type: InitialValues, Instructions: 25896
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
;   OK -- Elapsed: 1.290354e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 127 -- Type: InitialValues, Instructions: 26108
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
;   OK -- Elapsed: 1.249618e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 128 -- Type: InitialValues, Instructions: 26444
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
;   OK -- Elapsed: 1.450258e-02s
;   Solvable: false

; Query 129 -- Type: InitialValues, Instructions: 26695
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
;   OK -- Elapsed: 1.347628e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 130 -- Type: InitialValues, Instructions: 29520
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
;   OK -- Elapsed: 1.268299e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 131 -- Type: InitialValues, Instructions: 29520
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
;   OK -- Elapsed: 1.352280e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 132 -- Type: InitialValues, Instructions: 34484
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (and  (=  (_ bv108 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.196389e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 133 -- Type: InitialValues, Instructions: 35025
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
;   OK -- Elapsed: 1.437815e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 134 -- Type: InitialValues, Instructions: 40196
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
;   OK -- Elapsed: 1.290152e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 135 -- Type: InitialValues, Instructions: 40309
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
;   OK -- Elapsed: 1.270977e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 136 -- Type: InitialValues, Instructions: 40346
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
;   OK -- Elapsed: 1.547006e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 137 -- Type: InitialValues, Instructions: 40346
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.426398e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 138 -- Type: InitialValues, Instructions: 43250
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
;   OK -- Elapsed: 1.458016e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 139 -- Type: InitialValues, Instructions: 43396
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
;   OK -- Elapsed: 1.326262e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 140 -- Type: InitialValues, Instructions: 46946
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
;   OK -- Elapsed: 1.230615e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 141 -- Type: InitialValues, Instructions: 47829
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
;   OK -- Elapsed: 1.359937e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 142 -- Type: InitialValues, Instructions: 48153
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
;   OK -- Elapsed: 1.183840e-02s
;   Solvable: false

; Query 143 -- Type: InitialValues, Instructions: 50147
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
;   OK -- Elapsed: 1.607170e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 144 -- Type: InitialValues, Instructions: 50803
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
;   OK -- Elapsed: 2.141502e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 145 -- Type: InitialValues, Instructions: 50985
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
;   OK -- Elapsed: 2.336362e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 146 -- Type: InitialValues, Instructions: 50985
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
;   OK -- Elapsed: 2.162287e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 147 -- Type: InitialValues, Instructions: 58295
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
;   OK -- Elapsed: 1.653047e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 148 -- Type: InitialValues, Instructions: 62119
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
;   OK -- Elapsed: 1.415230e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 149 -- Type: InitialValues, Instructions: 64731
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv42 8) ?B1 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv111 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.552695e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 150 -- Type: InitialValues, Instructions: 64807
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
;   OK -- Elapsed: 1.294887e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 151 -- Type: InitialValues, Instructions: 69366
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
;   OK -- Elapsed: 1.353115e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 152 -- Type: InitialValues, Instructions: 78816
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
;   OK -- Elapsed: 1.214748e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 153 -- Type: InitialValues, Instructions: 78817
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
;   OK -- Elapsed: 1.375986e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 154 -- Type: InitialValues, Instructions: 79406
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
;   OK -- Elapsed: 1.731092e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 155 -- Type: InitialValues, Instructions: 79406
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.351932e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 156 -- Type: InitialValues, Instructions: 79783
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
;   OK -- Elapsed: 1.488163e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 157 -- Type: InitialValues, Instructions: 79783
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
;   OK -- Elapsed: 1.145768e-02s
;   Solvable: false

; Query 158 -- Type: InitialValues, Instructions: 89527
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv5 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.259814e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 159 -- Type: InitialValues, Instructions: 91239
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
;   OK -- Elapsed: 1.424687e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 160 -- Type: InitialValues, Instructions: 91440
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
;   OK -- Elapsed: 1.330064e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 161 -- Type: InitialValues, Instructions: 103222
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
;   OK -- Elapsed: 1.282025e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 162 -- Type: InitialValues, Instructions: 104874
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
;   OK -- Elapsed: 1.505350e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 163 -- Type: InitialValues, Instructions: 104874
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
;   OK -- Elapsed: 1.423711e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 164 -- Type: InitialValues, Instructions: 105601
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
;   OK -- Elapsed: 1.488272e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 165 -- Type: InitialValues, Instructions: 106168
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
;   OK -- Elapsed: 1.269879e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 166 -- Type: InitialValues, Instructions: 110515
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
;   OK -- Elapsed: 1.283180e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 167 -- Type: InitialValues, Instructions: 110515
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
;   OK -- Elapsed: 1.372816e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 168 -- Type: InitialValues, Instructions: 114225
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
;   OK -- Elapsed: 1.307435e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 169 -- Type: InitialValues, Instructions: 124359
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
;   OK -- Elapsed: 1.201337e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 170 -- Type: InitialValues, Instructions: 125287
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
;   OK -- Elapsed: 1.305596e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 171 -- Type: InitialValues, Instructions: 128263
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
;   OK -- Elapsed: 1.395778e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 172 -- Type: InitialValues, Instructions: 149718
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
;   OK -- Elapsed: 1.159381e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 173 -- Type: InitialValues, Instructions: 151657
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
;   OK -- Elapsed: 1.165855e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 174 -- Type: InitialValues, Instructions: 163974
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.346524e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 175 -- Type: InitialValues, Instructions: 169870
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
;   OK -- Elapsed: 1.429428e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 176 -- Type: InitialValues, Instructions: 178432
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
;   OK -- Elapsed: 1.304233e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 177 -- Type: InitialValues, Instructions: 184106
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
;   OK -- Elapsed: 1.179003e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 178 -- Type: InitialValues, Instructions: 199239
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
;   OK -- Elapsed: 1.465262e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 179 -- Type: InitialValues, Instructions: 323118
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
;   OK -- Elapsed: 1.165233e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 180 -- Type: InitialValues, Instructions: 357977
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
;   OK -- Elapsed: 1.441470e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 181 -- Type: InitialValues, Instructions: 360919
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
;   OK -- Elapsed: 1.444500e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 182 -- Type: InitialValues, Instructions: 373921
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
;   OK -- Elapsed: 1.331048e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 183 -- Type: InitialValues, Instructions: 377743
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
;   OK -- Elapsed: 1.453138e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 184 -- Type: InitialValues, Instructions: 525596
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
;   OK -- Elapsed: 1.356072e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 185 -- Type: InitialValues, Instructions: 840210
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
;   OK -- Elapsed: 1.199994e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 186 -- Type: InitialValues, Instructions: 1479143
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
;   OK -- Elapsed: 1.203151e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 187 -- Type: InitialValues, Instructions: 2636470
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
;   OK -- Elapsed: 1.643578e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

