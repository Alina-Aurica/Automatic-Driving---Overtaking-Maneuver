; 
; Declarare
;

(ag_percept 
	(percept_pobj ev1) 
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
	(percept_pobj road_sign1)
	(percept_pname isa)
	(percept_pval road_sign)
)

(ag_percept 
	(percept_pobj road_sign1)
	(percept_pname name)
	(percept_pval temp_prohibited_overtaking)
)

(ag_percept 
	(percept_pobj road_mark1)
	(percept_pname isa)
	(percept_pval road_mark)
)

(ag_percept 
	(percept_pobj road_mark2)
	(percept_pname isa)
	(percept_pval road_mark)
)

(ag_percept 
	(percept_pobj road_mark1)
	(percept_pname name)
	(percept_pval split_white_line)
)

(ag_percept 
	(percept_pobj road_mark2)
	(percept_pname name)
	(percept_pval cont_yellow_line)
)

(ag_percept 
	(percept_pobj my_car)
	(percept_pname isa)
	(percept_pval car)
)

;
; Atribuire
;

(ag_percept 
	(percept_pobj road1) 
	(percept_pname partof) 
	(percept_pval ev1)
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
	(percept_pobj road_sign1)
	(percept_pname partof)
	(percept_pval lane1)
)

(ag_percept 
	(percept_pobj my_car)
	(percept_pname partof)
	(percept_pval lane1)
)

(ag_percept 
	(percept_pobj road_mark2) 
	(percept_pname partof) 
	(percept_pval road1)
)

(ag_percept 
	(percept_pobj road_mark1) 
	(percept_pname partof) 
	(percept_pval road1)
)