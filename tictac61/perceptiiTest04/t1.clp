;
; Declarare
;


(ag_percept 
	(percept_pobj ev4) 
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
    (percept_pobj line_of_cars)
    (percept_pname isa)
    (percept_pval other_cars)
)

(ag_percept
    (percept_pobj police_sound)
    (percept_pname isa)
    (percept_pval sound)
)

(ag_percept
    (percept_pobj normal_traffic_sound)
    (percept_pname isa)
    (percept_pval sound)
)

(ag_percept
    (percept_pobj car1)
    (percept_pname isa)
    (percept_pval car)
)

(ag_percept
    (percept_pobj car2)
    (percept_pname isa)
    (percept_pval car)
)

;
; Atribuire
;

(ag_percept 
	(percept_pobj road1) 
	(percept_pname partof) 
	(percept_pval ev4)
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
	(percept_pobj line_of_cars) 
	(percept_pname partof) 
	(percept_pval line1)
)

(ag_percept
	(percept_pobj normal_traffic_sound) 
	(percept_pname partof) 
	(percept_pval car1)
)

(ag_percept
	(percept_pobj normal_traffic_sound) 
	(percept_pname partof) 
	(percept_pval car2)
)

(ag_percept
	(percept_pobj front_line_of_cars) 
	(percept_pname partof) 
	(percept_pval line_of_cars)
)

(ag_percept
	(percept_pobj back_line_of_cars) 
	(percept_pname partof) 
	(percept_pval line_of_cars)
)

(ag_percept
	(percept_pobj car1) 
	(percept_pname partof) 
	(percept_pval front_line_of_cars)
)

(ag_percept
	(percept_pobj car2) 
	(percept_pname partof) 
	(percept_pval back_line_of_cars)
)

