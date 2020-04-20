; start Z3 query
(assert (not false))
(check-sat)
(reset)
; end Z3 query

; start Z3 query
(declare-fun a0 () (Array Int Int))
(assert (<= (select a0 0) 2147483647))
(assert (>= (select a0 0) (- 2147483648)))
(assert (not (= 0 (select a0 0))))
(check-sat)
(reset)
; end Z3 query

; start Z3 query
(declare-fun a0 () (Array Int Int))
(assert (not (= 0 (select a0 0))))
(assert (<= (select a0 0) 2147483647))
(assert (>= (select a0 0) (- 2147483648)))
(assert (not (< (select a0 0) 0)))
(check-sat)
(reset)
; end Z3 query

