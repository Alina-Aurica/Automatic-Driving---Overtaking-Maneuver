;
; Declarare
;


(ag_percept 
	(percept_pobj ev5) 
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
	(percept_pobj car1)
	(percept_pname isa)
	(percept_pval car)
)

(ag_percept 
	(percept_pobj signal1)
	(percept_pname isa)
	(percept_pval signal)
)

(ag_percept 
	(percept_pobj behind)
	(percept_pname isa)
	(percept_pval position)
)

;
; Atribuire
;

(ag_percept 
	(percept_pobj road1) 
	(percept_pname partof) 
	(percept_pval ev5)
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
	(percept_pobj car1) 
	(percept_pname partof) 
	(percept_pval line1)
)

(ag_percept
	(percept_pobj signal1) 
	(percept_pname partof) 
	(percept_pval car1)
)

(ag_percept
	(percept_pobj signal1) 
	(percept_pname name) 
	(percept_pval no_signal)
)

(ag_percept
	(percept_pobj car1) 
	(percept_pname position) 
	(percept_pval behind)
)
