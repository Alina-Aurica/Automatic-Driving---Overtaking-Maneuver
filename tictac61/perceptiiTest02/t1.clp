;
; Declarare
;


(ag_percept 
	(percept_pobj ev2) 
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
	(percept_pobj lane3) 
	(percept_pname isa) 
	(percept_pval lane)
)

(ag_percept 
	(percept_pobj my_car)
	(percept_pname isa)
	(percept_pval car)
)

(ag_percept 
	(percept_pobj another_car)
	(percept_pname isa)
	(percept_pval car)
)

(ag_percept
	(percept_pobj signal1) 
	(percept_pname isa) 
	(percept_pval signal)
)

;
; Atribuire
;

(ag_percept 
	(percept_pobj road1) 
	(percept_pname partof) 
	(percept_pval ev2)
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
	(percept_pobj lane3) 
	(percept_pname partof) 
	(percept_pval road1)
)

(ag_percept
	(percept_pobj my_car) 
	(percept_pname partof) 
	(percept_pval line2)
)

(ag_percept
	(percept_pobj another_car) 
	(percept_pname partof) 
	(percept_pval line2)
)

(ag_percept
	(percept_pobj signal1) 
	(percept_pname partof) 
	(percept_pval another_car)
)

(ag_percept
	(percept_pobj signal1) 
	(percept_pname name) 
	(percept_pval right_turn_signal)
)



