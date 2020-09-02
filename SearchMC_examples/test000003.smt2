;268
(set-logic QF_AUFBV )
(declare-fun h () (Array (_ BitVec 32) (_ BitVec 8) ) )
(declare-fun l () (Array (_ BitVec 32) (_ BitVec 8) ) )
(assert (let ( (?B1 ((_ sign_extend 24)  (select  h (_ bv2 32) ) ) ) (?B2 ((_ sign_extend 24)  (select  l (_ bv2 32) ) ) ) (?B3 ((_ sign_extend 24)  (select  h (_ bv0 32) ) ) ) (?B4 ((_ sign_extend 24)  (select  l (_ bv0 32) ) ) ) (?B5 ((_ sign_extend 24)  (select  l (_ bv1 32) ) ) ) (?B6 ((_ sign_extend 24)  (select  h (_ bv1 32) ) ) ) (?B7 ((_ sign_extend 24)  (select  l (_ bv3 32) ) ) ) (?B8 ((_ sign_extend 24)  (select  h (_ bv3 32) ) ) ) ) (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (and  (bvsle  (_ bv48 32) ?B3 ) (bvsle  ?B3 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B4 ) ) (bvsle  ?B4 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B6 ) ) (bvsle  ?B6 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B5 ) ) (bvsle  ?B5 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B1 ) ) (bvsle  ?B1 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B2 ) ) (bvsle  ?B2 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B8 ) ) (bvsle  ?B8 (_ bv57 32) ) ) (bvsle  (_ bv48 32) ?B7 ) ) (bvsle  ?B7 (_ bv57 32) ) ) (=  ?B3 ?B4 ) ) (=  ?B6 ?B5 ) ) (=  false (=  ?B1 ?B2 ) ) ) ) )
(check-sat)
(exit)
