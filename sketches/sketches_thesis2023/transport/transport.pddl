(:policy
(:boolean_features "b_empty(c_primitive(empty,0))")
(:numerical_features "n_count(r_diff(r_primitive(at_g,0,1), r_primitive(at,0,1)))" "n_concept_distance(c_some(r_primitive(at,1,0),c_primitive(truck,0)),r_primitive(connected,0,1),c_and(c_all(r_primitive(at_g,1,0),c_bot),c_some(r_primitive(at,1,0),c_primitive(box,0))))" "n_concept_distance(c_some(r_primitive(at,1,0),c_primitive(truck,0)),r_primitive(connected,0,1),c_some(r_primitive(at_g,1,0),c_top))")
(:rule (:conditions (:c_b_neg 0) (:c_n_gt 0) (:c_n_eq 1)) (:effects (:e_b_pos 0) (:e_n_bot 0)))
(:rule (:conditions (:c_b_pos 0) (:c_n_gt 0) (:c_n_gt 2)) (:effects (:e_b_bot 0) (:e_n_bot 0) (:e_n_dec 2)))
(:rule (:conditions (:c_b_pos 0) (:c_n_gt 0) (:c_n_eq 2)) (:effects (:e_b_neg 0) (:e_n_dec 0)))
(:rule (:conditions (:c_b_neg 0) (:c_n_gt 0) (:c_n_gt 1)) (:effects (:e_b_bot 0) (:e_n_dec 0) (:e_n_dec 1)))
)
