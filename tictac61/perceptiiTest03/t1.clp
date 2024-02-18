;
; Declarare
;


(ag_percept 
	(percept_pobj ev3) 
	(percept_pname isa) 
	(percept_pval event)
)

(ag_percept 
	(percept_pobj road1) 
	(percept_pname isa) 
	(percept_pval road)
)

(ag_percept 
	(percept_pobj lane1) 
	(percept_pname isa) 
	(percept_pval lane)
)

(ag_percept 
	(percept_pobj lane2) 
	(percept_pname isa) 
	(percept_pval lane)
)

(ag_percept 
	(percept_pobj my_car)
	(percept_pname isa)
	(percept_pval car)
)

(ag_percept 
	(percept_pobj congestion)
	(percept_pname isa)
	(percept_pval traffic)
)

(ag_percept 
	(percept_pobj road_mark1)
	(percept_pname isa)
	(percept_pval road_mark)
)

(ag_percept 
	(percept_pobj road_mark1)
	(percept_pname name)
	(percept_pval split_white_line)
)

(ag_percept
	(percept_pobj traffic) 
	(percept_pname name) 
	(percept_pval stationary)
)

;
; Atribuire
;

(ag_percept 
	(percept_pobj road1) 
	(percept_pname partof) 
	(percept_pval ev3)
)

(ag_percept 
	(percept_pobj lane1) 
	(percept_pname partof) 
	(percept_pval road1)
)

(ag_percept 
	(percept_pobj lane2) 
	(percept_pname partof) 
	(percept_pval road1)
)

(ag_percept
	(percept_pobj my_car) 
	(percept_pname partof) 
	(percept_pval line1)
)

(ag_percept
	(percept_pobj congestion) 
	(percept_pname partof) 
	(percept_pval line1)
)

(ag_percept 
	(percept_pobj road_mark1) 
	(percept_pname partof) 
	(percept_pval road1)
)