; Query 0 -- Type: InitialValues, Instructions: 21
(set-logic QF_AUFBV )
(assert true )
(check-sat)
(exit)
;   OK -- Elapsed: 1.552732e-02s
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
;   OK -- Elapsed: 1.313849e-02s
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
;   OK -- Elapsed: 1.274685e-02s
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
;   OK -- Elapsed: 1.197510e-02s
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
;   OK -- Elapsed: 1.265385e-02s
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
;   OK -- Elapsed: 1.133812e-02s
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
;   OK -- Elapsed: 1.246600e-02s
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
;   OK -- Elapsed: 1.373623e-02s
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
;   OK -- Elapsed: 1.442077e-02s
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
;   OK -- Elapsed: 1.315260e-02s
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
;   OK -- Elapsed: 1.165564e-02s
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
;   OK -- Elapsed: 1.400501e-02s
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
;   OK -- Elapsed: 1.197510e-02s
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
;   OK -- Elapsed: 1.270770e-02s
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
;   OK -- Elapsed: 1.115492e-02s
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
;   OK -- Elapsed: 1.314695e-02s
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
;   OK -- Elapsed: 1.243473e-02s
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
;   OK -- Elapsed: 1.142611e-02s
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
;   OK -- Elapsed: 1.350747e-02s
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
;   OK -- Elapsed: 1.171306e-02s
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
;   OK -- Elapsed: 1.339928e-02s
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
;   OK -- Elapsed: 1.238216e-02s
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
;   OK -- Elapsed: 1.139815e-02s
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
;   OK -- Elapsed: 1.412029e-02s
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
;   OK -- Elapsed: 1.313415e-02s
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
;   OK -- Elapsed: 1.303782e-02s
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
;   OK -- Elapsed: 1.294272e-02s
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
;   OK -- Elapsed: 1.250397e-02s
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
;   OK -- Elapsed: 1.172178e-02s
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
;   OK -- Elapsed: 1.201783e-02s
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
;   OK -- Elapsed: 1.345324e-02s
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
;   OK -- Elapsed: 1.228326e-02s
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
;   OK -- Elapsed: 1.436352e-02s
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
;   OK -- Elapsed: 1.186861e-02s
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
;   OK -- Elapsed: 1.223604e-02s
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
;   OK -- Elapsed: 1.376881e-02s
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
;   OK -- Elapsed: 1.154148e-02s
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
;   OK -- Elapsed: 1.279143e-02s
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
;   OK -- Elapsed: 1.232321e-02s
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
;   OK -- Elapsed: 1.320004e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 40 -- Type: InitialValues, Instructions: 1758
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
;   OK -- Elapsed: 1.382437e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 41 -- Type: InitialValues, Instructions: 1777
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
;   OK -- Elapsed: 1.276245e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 42 -- Type: InitialValues, Instructions: 1777
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
;   OK -- Elapsed: 1.227039e-02s
;   Solvable: false

; Query 43 -- Type: InitialValues, Instructions: 1813
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
;   OK -- Elapsed: 1.343434e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 44 -- Type: InitialValues, Instructions: 1813
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
;   OK -- Elapsed: 1.341316e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 45 -- Type: InitialValues, Instructions: 2078
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
;   OK -- Elapsed: 1.265796e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 46 -- Type: InitialValues, Instructions: 2079
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
;   OK -- Elapsed: 1.331686e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 47 -- Type: InitialValues, Instructions: 2099
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
;   OK -- Elapsed: 1.307050e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 48 -- Type: InitialValues, Instructions: 2151
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
;   OK -- Elapsed: 1.233046e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 49 -- Type: InitialValues, Instructions: 2204
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
;   OK -- Elapsed: 1.431616e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 50 -- Type: InitialValues, Instructions: 2265
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
;   OK -- Elapsed: 1.268459e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 51 -- Type: InitialValues, Instructions: 2451
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
;   OK -- Elapsed: 1.225377e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 52 -- Type: InitialValues, Instructions: 2472
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
;   OK -- Elapsed: 1.217806e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 53 -- Type: InitialValues, Instructions: 2759
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
;   OK -- Elapsed: 1.283831e-02s
;   Solvable: false

; Query 54 -- Type: InitialValues, Instructions: 2806
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
;   OK -- Elapsed: 1.306388e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 55 -- Type: InitialValues, Instructions: 2851
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
;   OK -- Elapsed: 1.181986e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 56 -- Type: InitialValues, Instructions: 3119
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
;   OK -- Elapsed: 1.537519e-02s
;   Solvable: true
;     re = [255,255,255,255,255,255,255]

; Query 57 -- Type: InitialValues, Instructions: 3267
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
;   OK -- Elapsed: 1.236308e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 58 -- Type: InitialValues, Instructions: 3449
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
;   OK -- Elapsed: 1.284555e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 59 -- Type: InitialValues, Instructions: 3872
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
;   OK -- Elapsed: 1.347352e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 60 -- Type: InitialValues, Instructions: 3872
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
;   OK -- Elapsed: 1.253959e-02s
;   Solvable: false

; Query 61 -- Type: InitialValues, Instructions: 3896
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
;   OK -- Elapsed: 1.306664e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 62 -- Type: InitialValues, Instructions: 4049
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
;   OK -- Elapsed: 1.317975e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 63 -- Type: InitialValues, Instructions: 4072
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
;   OK -- Elapsed: 1.240016e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 64 -- Type: InitialValues, Instructions: 4437
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
;   OK -- Elapsed: 1.633974e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 65 -- Type: InitialValues, Instructions: 4437
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
;   OK -- Elapsed: 1.341786e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 66 -- Type: InitialValues, Instructions: 4449
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
;   OK -- Elapsed: 1.240757e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 67 -- Type: InitialValues, Instructions: 4449
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv101 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.368557e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 68 -- Type: InitialValues, Instructions: 4550
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
;   OK -- Elapsed: 1.263005e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 69 -- Type: InitialValues, Instructions: 5018
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
;   OK -- Elapsed: 1.276408e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 70 -- Type: InitialValues, Instructions: 5270
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
;   OK -- Elapsed: 1.252596e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 71 -- Type: InitialValues, Instructions: 5634
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
;   OK -- Elapsed: 1.428255e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 72 -- Type: InitialValues, Instructions: 5759
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
;   OK -- Elapsed: 1.363632e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 73 -- Type: InitialValues, Instructions: 5759
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
;   OK -- Elapsed: 1.311123e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 74 -- Type: InitialValues, Instructions: 5913
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
;   OK -- Elapsed: 1.287008e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 75 -- Type: InitialValues, Instructions: 6943
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
;   OK -- Elapsed: 1.314479e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 76 -- Type: InitialValues, Instructions: 7050
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
;   OK -- Elapsed: 1.309576e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 77 -- Type: InitialValues, Instructions: 7309
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
;   OK -- Elapsed: 1.230418e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 78 -- Type: InitialValues, Instructions: 7392
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
;   OK -- Elapsed: 1.368839e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 79 -- Type: InitialValues, Instructions: 7669
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
;   OK -- Elapsed: 1.198511e-02s
;   Solvable: false

; Query 80 -- Type: InitialValues, Instructions: 7859
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
;   OK -- Elapsed: 1.486526e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 81 -- Type: InitialValues, Instructions: 7962
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
;   OK -- Elapsed: 1.262514e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 82 -- Type: InitialValues, Instructions: 8363
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
;   OK -- Elapsed: 1.340007e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 83 -- Type: InitialValues, Instructions: 8412
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
;   OK -- Elapsed: 1.218596e-02s
;   Solvable: false

; Query 84 -- Type: InitialValues, Instructions: 8598
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
;   OK -- Elapsed: 1.207514e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 85 -- Type: InitialValues, Instructions: 8795
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
;   OK -- Elapsed: 1.293176e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 86 -- Type: InitialValues, Instructions: 9107
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
;   OK -- Elapsed: 1.311322e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 87 -- Type: InitialValues, Instructions: 9107
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
;   OK -- Elapsed: 1.195284e-02s
;   Solvable: false

; Query 88 -- Type: InitialValues, Instructions: 9911
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
;   OK -- Elapsed: 1.411813e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 89 -- Type: InitialValues, Instructions: 9960
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
;   OK -- Elapsed: 1.395907e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 90 -- Type: InitialValues, Instructions: 10003
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
;   OK -- Elapsed: 1.343976e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 91 -- Type: InitialValues, Instructions: 10003
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
;   OK -- Elapsed: 1.319709e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 92 -- Type: InitialValues, Instructions: 10175
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
;   OK -- Elapsed: 1.188019e-02s
;   Solvable: true
;     re = [36,36,36,36,36,36,36]

; Query 93 -- Type: InitialValues, Instructions: 11097
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
;   OK -- Elapsed: 1.393849e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 94 -- Type: InitialValues, Instructions: 11097
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
;   OK -- Elapsed: 1.276054e-02s
;   Solvable: false

; Query 95 -- Type: InitialValues, Instructions: 11428
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
;   OK -- Elapsed: 1.656779e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 96 -- Type: InitialValues, Instructions: 11619
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
;   OK -- Elapsed: 1.356321e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 97 -- Type: InitialValues, Instructions: 11619
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
;   OK -- Elapsed: 1.256305e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 98 -- Type: InitialValues, Instructions: 13186
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
;   OK -- Elapsed: 1.345277e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 99 -- Type: InitialValues, Instructions: 13351
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
;   OK -- Elapsed: 1.169769e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 100 -- Type: InitialValues, Instructions: 14525
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
;   OK -- Elapsed: 1.364193e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 101 -- Type: InitialValues, Instructions: 14870
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
;   OK -- Elapsed: 1.199326e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 102 -- Type: InitialValues, Instructions: 15887
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
;   OK -- Elapsed: 1.265497e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 103 -- Type: InitialValues, Instructions: 15898
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
;   OK -- Elapsed: 1.456017e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 104 -- Type: InitialValues, Instructions: 16017
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
;   OK -- Elapsed: 1.369502e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 105 -- Type: InitialValues, Instructions: 16076
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
;   OK -- Elapsed: 1.272560e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 106 -- Type: InitialValues, Instructions: 16351
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
;   OK -- Elapsed: 1.413633e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 107 -- Type: InitialValues, Instructions: 16426
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
;   OK -- Elapsed: 1.192738e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 108 -- Type: InitialValues, Instructions: 16540
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
;   OK -- Elapsed: 1.178928e-02s
;   Solvable: false

; Query 109 -- Type: InitialValues, Instructions: 16785
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
;   OK -- Elapsed: 1.424523e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 110 -- Type: InitialValues, Instructions: 16944
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
;   OK -- Elapsed: 1.266666e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 111 -- Type: InitialValues, Instructions: 16972
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
;   OK -- Elapsed: 1.382718e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 112 -- Type: InitialValues, Instructions: 17543
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv104 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.264351e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 113 -- Type: InitialValues, Instructions: 17543
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
;   OK -- Elapsed: 1.254808e-02s
;   Solvable: false

; Query 114 -- Type: InitialValues, Instructions: 18978
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
;   OK -- Elapsed: 1.322528e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 115 -- Type: InitialValues, Instructions: 19248
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
;   OK -- Elapsed: 1.333779e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 116 -- Type: InitialValues, Instructions: 20053
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
;   OK -- Elapsed: 1.341488e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 117 -- Type: InitialValues, Instructions: 20053
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
;   OK -- Elapsed: 1.389778e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 118 -- Type: InitialValues, Instructions: 20192
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
;   OK -- Elapsed: 1.282693e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 119 -- Type: InitialValues, Instructions: 21769
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
;   OK -- Elapsed: 1.356937e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 120 -- Type: InitialValues, Instructions: 21993
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
;   OK -- Elapsed: 1.324944e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 121 -- Type: InitialValues, Instructions: 22441
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
;   OK -- Elapsed: 1.345195e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 122 -- Type: InitialValues, Instructions: 22903
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
;   OK -- Elapsed: 1.295653e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 123 -- Type: InitialValues, Instructions: 23726
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
;   OK -- Elapsed: 1.326159e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 124 -- Type: InitialValues, Instructions: 24618
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
;   OK -- Elapsed: 1.269010e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 125 -- Type: InitialValues, Instructions: 24618
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
;   OK -- Elapsed: 1.538947e-02s
;   Solvable: false

; Query 126 -- Type: InitialValues, Instructions: 25313
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
;   OK -- Elapsed: 1.281433e-02s
;   Solvable: false

; Query 127 -- Type: InitialValues, Instructions: 26282
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
;   OK -- Elapsed: 1.318714e-02s
;   Solvable: false

; Query 128 -- Type: InitialValues, Instructions: 26917
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
;   OK -- Elapsed: 1.345455e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 129 -- Type: InitialValues, Instructions: 27277
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
;   OK -- Elapsed: 1.239190e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 130 -- Type: InitialValues, Instructions: 27711
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
;   OK -- Elapsed: 1.427166e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 131 -- Type: InitialValues, Instructions: 27711
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (=  false (=  (_ bv108 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv101 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.205565e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 132 -- Type: InitialValues, Instructions: 29269
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
;   OK -- Elapsed: 1.395466e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 133 -- Type: InitialValues, Instructions: 38490
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
;   OK -- Elapsed: 1.325968e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 134 -- Type: InitialValues, Instructions: 40373
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
;   OK -- Elapsed: 1.260961e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 135 -- Type: InitialValues, Instructions: 40527
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
;   OK -- Elapsed: 1.219514e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 136 -- Type: InitialValues, Instructions: 41375
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
;   OK -- Elapsed: 1.433890e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 137 -- Type: InitialValues, Instructions: 41375
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
;   OK -- Elapsed: 1.269576e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 138 -- Type: InitialValues, Instructions: 44611
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
;   OK -- Elapsed: 1.260086e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 139 -- Type: InitialValues, Instructions: 44876
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
;   OK -- Elapsed: 1.134239e-02s
;   Solvable: false

; Query 140 -- Type: InitialValues, Instructions: 46949
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
;   OK -- Elapsed: 1.450415e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 141 -- Type: InitialValues, Instructions: 46949
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv1 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (and  (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.173908e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 142 -- Type: InitialValues, Instructions: 47580
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
;   OK -- Elapsed: 1.334410e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 143 -- Type: InitialValues, Instructions: 50174
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
;   OK -- Elapsed: 1.415314e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 144 -- Type: InitialValues, Instructions: 51167
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
;   OK -- Elapsed: 1.332409e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 145 -- Type: InitialValues, Instructions: 54582
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
;   OK -- Elapsed: 1.305844e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 146 -- Type: InitialValues, Instructions: 55584
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
;   OK -- Elapsed: 1.261826e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 147 -- Type: InitialValues, Instructions: 58069
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
;   OK -- Elapsed: 1.269425e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 148 -- Type: InitialValues, Instructions: 61383
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
;   OK -- Elapsed: 1.449551e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 149 -- Type: InitialValues, Instructions: 63287
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
;   OK -- Elapsed: 1.395062e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 150 -- Type: InitialValues, Instructions: 71114
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv3 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv36 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.302562e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 151 -- Type: InitialValues, Instructions: 73398
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
;   OK -- Elapsed: 1.280116e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 152 -- Type: InitialValues, Instructions: 76098
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
;   OK -- Elapsed: 1.263304e-02s
;   Solvable: false

; Query 153 -- Type: InitialValues, Instructions: 78112
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
;   OK -- Elapsed: 1.492671e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 154 -- Type: InitialValues, Instructions: 80411
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
;   OK -- Elapsed: 1.455129e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 155 -- Type: InitialValues, Instructions: 80411
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
;   OK -- Elapsed: 1.287996e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 156 -- Type: InitialValues, Instructions: 82982
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
;   OK -- Elapsed: 1.286428e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 157 -- Type: InitialValues, Instructions: 89311
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
;   OK -- Elapsed: 1.225888e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 158 -- Type: InitialValues, Instructions: 93189
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
;   OK -- Elapsed: 1.501477e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 159 -- Type: InitialValues, Instructions: 102394
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
;   OK -- Elapsed: 1.271545e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 160 -- Type: InitialValues, Instructions: 105468
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
;   OK -- Elapsed: 1.351795e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 161 -- Type: InitialValues, Instructions: 105468
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
;   OK -- Elapsed: 1.379924e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 162 -- Type: InitialValues, Instructions: 108374
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
;   OK -- Elapsed: 1.389324e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 163 -- Type: InitialValues, Instructions: 109131
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
;   OK -- Elapsed: 1.367405e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 164 -- Type: InitialValues, Instructions: 112525
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
;   OK -- Elapsed: 1.366914e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 165 -- Type: InitialValues, Instructions: 114977
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
;   OK -- Elapsed: 1.359065e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 166 -- Type: InitialValues, Instructions: 114977
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (and  (=  false (=  (_ bv111 8) ?B1 ) ) (=  false ?B2 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.438646e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 167 -- Type: InitialValues, Instructions: 118836
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
;   OK -- Elapsed: 1.381639e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 168 -- Type: InitialValues, Instructions: 122090
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
;   OK -- Elapsed: 1.299369e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 169 -- Type: InitialValues, Instructions: 126443
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
;   OK -- Elapsed: 1.247276e-02s
;   Solvable: true
;     re = [101,101,101,101,101,101,101]

; Query 170 -- Type: InitialValues, Instructions: 127229
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
;   OK -- Elapsed: 1.344993e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 171 -- Type: InitialValues, Instructions: 144258
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
;   OK -- Elapsed: 1.212269e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 172 -- Type: InitialValues, Instructions: 153931
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
;   OK -- Elapsed: 1.278886e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 173 -- Type: InitialValues, Instructions: 163260
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
;   OK -- Elapsed: 1.377361e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 174 -- Type: InitialValues, Instructions: 185856
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
;   OK -- Elapsed: 1.253934e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 175 -- Type: InitialValues, Instructions: 198619
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv104 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) (=  false (=  (_ bv101 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.387875e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 176 -- Type: InitialValues, Instructions: 206255
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv2 32) ) ) ) (and  (and  (and  (and  (=  (_ bv111 8) ?B1 ) (=  false (=  (_ bv42 8) ?B1 ) ) ) (=  false (=  (_ bv0 8) ?B1 ) ) ) (=  false (=  (_ bv108 8) ?B1 ) ) ) (=  false (=  (_ bv46 8) ?B1 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.330981e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 177 -- Type: InitialValues, Instructions: 229437
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
;   OK -- Elapsed: 1.231643e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 178 -- Type: InitialValues, Instructions: 244986
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
;   OK -- Elapsed: 1.277750e-02s
;   Solvable: true
;     re = [108,108,108,108,108,108,108]

; Query 179 -- Type: InitialValues, Instructions: 365283
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
;   OK -- Elapsed: 1.193910e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 180 -- Type: InitialValues, Instructions: 369098
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
;   OK -- Elapsed: 1.497762e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 181 -- Type: InitialValues, Instructions: 374021
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
;   OK -- Elapsed: 1.353656e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 182 -- Type: InitialValues, Instructions: 437443
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
;   OK -- Elapsed: 1.288605e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 183 -- Type: InitialValues, Instructions: 528885
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
;   OK -- Elapsed: 1.308020e-02s
;   Solvable: true
;     re = [111,111,111,111,111,111,111]

; Query 184 -- Type: InitialValues, Instructions: 765029
(set-option :produce-models true)
(set-logic QF_AUFBV )
(declare-fun re () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 (select  re (_ bv4 32) ) ) ) (let ( (?B2 (=  (_ bv46 8) ?B1 ) ) ) (and  (and  (=  false (=  (_ bv0 8) ?B1 ) ) (or  (=  (_ bv108 8) ?B1 ) ?B2 ) ) (or  (=  (_ bv111 8) ?B1 ) ?B2 ) ) ) ) )
(check-sat)
(get-value ( (select re (_ bv0 32) ) ) )
(get-value ( (select re (_ bv1 32) ) ) )
(get-value ( (select re (_ bv2 32) ) ) )
(get-value ( (select re (_ bv3 32) ) ) )
(get-value ( (select re (_ bv4 32) ) ) )
(get-value ( (select re (_ bv5 32) ) ) )
(get-value ( (select re (_ bv6 32) ) ) )
(exit)
;   OK -- Elapsed: 1.243705e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 185 -- Type: InitialValues, Instructions: 860611
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
;   OK -- Elapsed: 1.252612e-02s
;   Solvable: true
;     re = [46,46,46,46,46,46,46]

; Query 186 -- Type: InitialValues, Instructions: 1437009
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
;   OK -- Elapsed: 1.360276e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

; Query 187 -- Type: InitialValues, Instructions: 2587997
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
;   OK -- Elapsed: 1.656170e-02s
;   Solvable: true
;     re = [104,104,104,104,104,104,104]

