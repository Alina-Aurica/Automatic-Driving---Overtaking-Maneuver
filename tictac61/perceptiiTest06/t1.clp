;
; Declarare
;


(ag_percept 
	(percept_pobj ev6) 
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
    (percept_pobj another_car)
	(percept_pname isa)
	(percept_pval car)
)

(ag_percept
    (percept_pobj road_sign1)
	(percept_pname isa)
	(percept_pval road_sign)
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
	(percept_pval lane1)
)

(ag_percept
    (percept_pobj another_car)
	(percept_pname partof)
	(percept_pval line1)
)

(ag_percept
    (percept_pobj road_sign1)
	(percept_pname partof)
	(percept_pval line1)
)

(ag_percept
    (percept_pobj road_sign1)
	(percept_pname name)
	(percept_pval curve_sign)
)

; d = (h/(V1 - V2))*V1

(ag_percept
    (percept_pobj distance_between_my_car_rs1)
	(percept_pname distance)
	(percept_pval 100)
)

(ag_percept
    (percept_pobj distance_between_my_car_anoher_car)
	(percept_pname distance)
	(percept_pval 10)
)

(ag_percept
    (percept_pobj speed_my_car)
	(percept_pname speed)
	(percept_pval 70)
)

(ag_percept
    (percept_pobj speed_another_car)
	(percept_pname speed)
	(percept_pval 50)
)

(ag_percept
    (percept_pobj speed_my_car)
	(percept_pname partof)
	(percept_pval my_car)
)

(ag_percept
    (percept_pobj speed_another_car)
	(percept_pname partof)
	(percept_pval another_car)
)


