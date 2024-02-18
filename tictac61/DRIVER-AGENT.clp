;
;-------Auxiliary facts ---------------------------------------
;

(defrule AGENT::initCycle-overtaking
    (declare (salience 89))
    (timp (valoare ?)) ;make sure it fires each cycle
=>
    (if (eq ?*ag-in-debug* TRUE) then (printout t "    <D>initCycle-overtaking prohibited by default " crlf))
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))) ;by default, we assume overtaking NOT valid
    ;(facts AGENT)
)

;;----------------------------------
;;
;;    Depasire
;;
;;----------------------------------

;;----------------------------------
;; Zona de constructii cu restrictii de depasire 
;; Marcaje temporare
;;----------------------------------

(defrule AGENT::zona_constructii
    (timp (valoare ?t))
    ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))
    
    (ag_bel (bel_pobj ev1))

    (ag_bel (bel_pobj road_mark1) (bel_pname isa) (bel_pval road_mark))
    (ag_bel (bel_pobj road_mark1) (bel_pname name) (bel_pval split_white_line))
    
    (ag_bel (bel_pobj road_mark2) (bel_pname isa) (bel_pval road_mark))
    (ag_bel (bel_pobj road_mark2) (bel_pname name) (bel_pval ?roadmarkval))
    
    (ag_bel (bel_pobj road_sign1) (bel_pname isa) (bel_pval road_sign))
    (ag_bel (bel_pobj road_sign1) (bel_pname name) (bel_pval ?roadsignval))

    (test (neq ?roadmarkval cont_yellow_line))
    (test (neq ?roadsignval temp_prohibited_overtaking))

    =>
    
    ; (printout t "Se poate depasi -- eliminarea tuturor restrictiilor"  crlf)
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
    ; (printout t "Depasire permisa!"  crlf)

)

;;----------------------------------
;; Depasirea pe partea dreapta
;;----------------------------------

(defrule AGENT::depasire_pe_partea_dreapta
    (timp (valoare ?t))
    ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))
	
	(ag_bel (bel_pobj ev2))
	
	(ag_bel (bel_pobj another_car) (bel_pname isa) (bel_pval car))
	(ag_bel (bel_pobj another_car) (bel_pname partof) (bel_pval ?noline))
	
	(ag_bel (bel_pobj signal1) (bel_pname name) (bel_pval left_turn_signal))
	
    (test (neq ?noline line1))

	=>
	
	;(printout t "Se poate depasi pe partea dreapta" crlf)
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
    ;(printout t "Depasire permisa!"  crlf)
														
)

;;----------------------------------
;; Depasirea unei coloane de vehicule in asteptare
;;----------------------------------

(defrule AGENT::depasire_vehicule_asteptare

    (timp (valoare ?t))

	(ag_bel (bel_pobj ev3))
    ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))

    (ag_bel (bel_pobj congestion) (bel_pname isa) (bel_pval traffic))
    (ag_bel (bel_pobj traffic) (bel_pname name) (bel_pval ?traffic_status))
    
    (ag_bel (bel_pobj my_car) (bel_pname partof) (bel_pval ?car_driving_lane))
    (ag_bel (bel_pobj congestion) (bel_pname partof) (bel_pval ?traffic_driving_lane))
    
    (ag_bel (bel_pobj road_mark1) (bel_pname name) (bel_pval split_white_line))

    (test (eq ?traffic_status moving))
    (test (eq ?car_driving_lane ?traffic_driving_lane))

    =>

    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
    ; (printout t "Se poate depasi coloana in miscare"  crlf)
    ; (printout t "Depasire permisa!"  crlf)

)

;;----------------------------------
;; Depasirea unei coloane oficiale
;;----------------------------------

(defrule AGENT::depasire_coloana_oficiala

    (timp (valoare ?t))

	(ag_bel (bel_pobj ev4))
    ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))

    (ag_bel (bel_pobj line_of_cars) (bel_pname isa) (bel_pval other_cars))

    (ag_bel (bel_pobj car1) (bel_pname isa) (bel_pval car))
    (ag_bel (bel_pobj car1) (bel_pname partof) (bel_pval front_line_of_cars))
    (ag_bel (bel_pobj front_line_of_cars) (bel_pname partof) (bel_pval line_of_cars))

    (ag_bel (bel_pobj car2) (bel_pname isa) (bel_pval car))
    (ag_bel (bel_pobj car2) (bel_pname partof) (bel_pval back_line_of_cars))
    (ag_bel (bel_pobj back_line_of_cars) (bel_pname partof) (bel_pval line_of_cars))

    (ag_bel (bel_pobj ?sound_car_1) (bel_pname partof) (bel_pval car1))
    (ag_bel (bel_pobj ?sound_car_2) (bel_pname partof) (bel_pval car2))

    (test (neq ?sound_car_1 police_sound))
    (test (neq ?sound_car_1 police_sound))

    =>

    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
    ; (printout t "Depasire permisa, nu e coloana oficiala!"  crlf)

)

;;----------------------------------
;; Triplare
;;----------------------------------


(defrule AGENT::triplare

    (timp (valoare ?t))

	(ag_bel (bel_pobj ev5))
    ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))

    (ag_bel (bel_pobj my_car) (bel_pname partof) (bel_pval ?lane1))
    (ag_bel (bel_pobj car1) (bel_pname isa) (bel_pval car))
    (ag_bel (bel_pobj car1) (bel_pname partof) (bel_pval ?lane1))

    (ag_bel (bel_pobj car1) (bel_pname position) (bel_pval ?position))
    
    (ag_bel (bel_pobj signal1) (bel_pname isa) (bel_pval signal))
    (ag_bel (bel_pobj signal1) (bel_pname partof) (bel_pval car1))

    (ag_bel (bel_pobj signal1) (bel_pname name) (bel_pval ?signal_type))

    (test (eq ?position behind))
    (test (neq ?signal_type left_turn_signal))

    =>

    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
    ; (printout t "Depasire permisa."  crlf)

)

;;----------------------------------
;; Depasire inainte de curba 
;; Calculul distantei necesare depasirii
;;----------------------------------

(deffunction AGENT::distance (?h ?v1 ?v2)
    (if (neq ?v1 ?v2) then
        (bind ?result (* (/ ?h (- ?v1 ?v2)) ?v1))
    else
        (bind ?result 0)
    )
    
    =>
    (return ?result)
)

; (defrule AGENT::depasire_inainte_de_curba

;     (timp (valoare ?t))

; 	(ag_bel (bel_pobj ev6))
;     ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))

;     (ag_bel (bel_pobj my_car) (bel_pname isa) (bel_pval car))
;     (ag_bel (bel_pobj ?speed_my_car) (bel_pname partof) (bel_pval my_car))
;     (ag_bel (bel_pobj ?speed_my_car) (bel_pname speed) (bel_pval ?val_speed_my_car))

;     (ag_bel (bel_pobj another_car) (bel_pname isa) (bel_pval car))
;     (ag_bel (bel_pobj ?speed_another_car) (bel_pname partof) (bel_pval another_car))
;     (ag_bel (bel_pobj ?speed_another_car) (bel_pname speed) (bel_pval ?val_speed_another_car))

;     (ag_bel (bel_pobj distance_between_my_car_anoher_car) (bel_pname distance) (bel_pval ?distance_between_cars))
;     (ag_bel (bel_pobj distance_between_my_car_rs1) (bel_pname distance) (bel_pval ?distance_between_my_car_rs))

;     ;(bind ?result (distance ?distance_between_cars ?speed_my_car ?speed_another_car))
;     (test (< (* (/ ?distance_between_cars (- ?val_speed_my_car ?val_speed_another_car)) ?val_speed_my_car) ?distance_between_my_car_rs))

;     =>

;     (retract ?f)
;     (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
;     (printout t "Depasire permisa."  crlf)

; )

(defrule AGENT::depasire_inainte_de_curba

    (timp (valoare ?t))

	(ag_bel (bel_pobj ev6))
    ?f <- (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval prohibited))

    (ag_bel (bel_pobj my_car) (bel_pname isa) (bel_pval car))
    (ag_bel (bel_pobj ?speed_my_car) (bel_pname partof) (bel_pval my_car))
    (ag_bel (bel_pobj ?speed_my_car) (bel_pname speed) (bel_pval ?val_speed_my_car))

    (ag_bel (bel_pobj another_car) (bel_pname isa) (bel_pval car))
    (ag_bel (bel_pobj ?speed_another_car) (bel_pname partof) (bel_pval another_car))
    (ag_bel (bel_pobj ?speed_another_car) (bel_pname speed) (bel_pval ?val_speed_another_car))

    (ag_bel (bel_pobj distance_between_my_car_anoher_car) (bel_pname distance) (bel_pval ?distance_between_cars))
    (ag_bel (bel_pobj distance_between_my_car_rs1) (bel_pname distance) (bel_pval ?distance_between_my_car_rs))

    (test (< (distance ?distance_between_cars ?val_speed_my_car ?val_speed_another_car) ?distance_between_my_car_rs))

    =>
    
    (retract ?f)
    (assert (ag_bel (bel_type moment) (bel_pname overtaking-maneuver) (bel_pval allowed)))
    ; (printout t "Depasire permisa."  crlf)

)

