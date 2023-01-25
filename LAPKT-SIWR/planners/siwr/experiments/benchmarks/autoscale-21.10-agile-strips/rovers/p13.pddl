(define (problem roverprob2031) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 - Rover
	rover0store rover1store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 waypoint13 waypoint14 waypoint15 waypoint16 waypoint17 waypoint18 waypoint19 waypoint20 waypoint21 waypoint22 waypoint23 waypoint24 waypoint25 - Waypoint
	camera0 camera1 camera2 camera3 camera4 camera5 - Camera
	objective0 - Objective
	)
(:init
	(visible waypoint0 waypoint8)
	(visible waypoint8 waypoint0)
	(visible waypoint0 waypoint14)
	(visible waypoint14 waypoint0)
	(visible waypoint0 waypoint16)
	(visible waypoint16 waypoint0)
	(visible waypoint0 waypoint23)
	(visible waypoint23 waypoint0)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint19)
	(visible waypoint19 waypoint1)
	(visible waypoint2 waypoint8)
	(visible waypoint8 waypoint2)
	(visible waypoint2 waypoint10)
	(visible waypoint10 waypoint2)
	(visible waypoint2 waypoint12)
	(visible waypoint12 waypoint2)
	(visible waypoint2 waypoint16)
	(visible waypoint16 waypoint2)
	(visible waypoint2 waypoint18)
	(visible waypoint18 waypoint2)
	(visible waypoint2 waypoint21)
	(visible waypoint21 waypoint2)
	(visible waypoint2 waypoint24)
	(visible waypoint24 waypoint2)
	(visible waypoint2 waypoint25)
	(visible waypoint25 waypoint2)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint14)
	(visible waypoint14 waypoint3)
	(visible waypoint3 waypoint17)
	(visible waypoint17 waypoint3)
	(visible waypoint4 waypoint2)
	(visible waypoint2 waypoint4)
	(visible waypoint4 waypoint3)
	(visible waypoint3 waypoint4)
	(visible waypoint4 waypoint15)
	(visible waypoint15 waypoint4)
	(visible waypoint4 waypoint23)
	(visible waypoint23 waypoint4)
	(visible waypoint5 waypoint7)
	(visible waypoint7 waypoint5)
	(visible waypoint5 waypoint23)
	(visible waypoint23 waypoint5)
	(visible waypoint5 waypoint24)
	(visible waypoint24 waypoint5)
	(visible waypoint6 waypoint2)
	(visible waypoint2 waypoint6)
	(visible waypoint6 waypoint4)
	(visible waypoint4 waypoint6)
	(visible waypoint6 waypoint23)
	(visible waypoint23 waypoint6)
	(visible waypoint7 waypoint1)
	(visible waypoint1 waypoint7)
	(visible waypoint7 waypoint10)
	(visible waypoint10 waypoint7)
	(visible waypoint8 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint7)
	(visible waypoint7 waypoint8)
	(visible waypoint8 waypoint14)
	(visible waypoint14 waypoint8)
	(visible waypoint8 waypoint16)
	(visible waypoint16 waypoint8)
	(visible waypoint8 waypoint17)
	(visible waypoint17 waypoint8)
	(visible waypoint8 waypoint20)
	(visible waypoint20 waypoint8)
	(visible waypoint8 waypoint21)
	(visible waypoint21 waypoint8)
	(visible waypoint8 waypoint24)
	(visible waypoint24 waypoint8)
	(visible waypoint9 waypoint2)
	(visible waypoint2 waypoint9)
	(visible waypoint9 waypoint3)
	(visible waypoint3 waypoint9)
	(visible waypoint9 waypoint11)
	(visible waypoint11 waypoint9)
	(visible waypoint10 waypoint15)
	(visible waypoint15 waypoint10)
	(visible waypoint10 waypoint17)
	(visible waypoint17 waypoint10)
	(visible waypoint11 waypoint8)
	(visible waypoint8 waypoint11)
	(visible waypoint11 waypoint13)
	(visible waypoint13 waypoint11)
	(visible waypoint11 waypoint24)
	(visible waypoint24 waypoint11)
	(visible waypoint12 waypoint3)
	(visible waypoint3 waypoint12)
	(visible waypoint12 waypoint4)
	(visible waypoint4 waypoint12)
	(visible waypoint12 waypoint9)
	(visible waypoint9 waypoint12)
	(visible waypoint12 waypoint10)
	(visible waypoint10 waypoint12)
	(visible waypoint12 waypoint19)
	(visible waypoint19 waypoint12)
	(visible waypoint12 waypoint21)
	(visible waypoint21 waypoint12)
	(visible waypoint13 waypoint20)
	(visible waypoint20 waypoint13)
	(visible waypoint14 waypoint10)
	(visible waypoint10 waypoint14)
	(visible waypoint15 waypoint20)
	(visible waypoint20 waypoint15)
	(visible waypoint16 waypoint6)
	(visible waypoint6 waypoint16)
	(visible waypoint16 waypoint17)
	(visible waypoint17 waypoint16)
	(visible waypoint16 waypoint22)
	(visible waypoint22 waypoint16)
	(visible waypoint17 waypoint7)
	(visible waypoint7 waypoint17)
	(visible waypoint18 waypoint8)
	(visible waypoint8 waypoint18)
	(visible waypoint18 waypoint13)
	(visible waypoint13 waypoint18)
	(visible waypoint18 waypoint17)
	(visible waypoint17 waypoint18)
	(visible waypoint18 waypoint19)
	(visible waypoint19 waypoint18)
	(visible waypoint18 waypoint23)
	(visible waypoint23 waypoint18)
	(visible waypoint19 waypoint5)
	(visible waypoint5 waypoint19)
	(visible waypoint19 waypoint21)
	(visible waypoint21 waypoint19)
	(visible waypoint19 waypoint22)
	(visible waypoint22 waypoint19)
	(visible waypoint20 waypoint0)
	(visible waypoint0 waypoint20)
	(visible waypoint20 waypoint2)
	(visible waypoint2 waypoint20)
	(visible waypoint20 waypoint7)
	(visible waypoint7 waypoint20)
	(visible waypoint20 waypoint18)
	(visible waypoint18 waypoint20)
	(visible waypoint20 waypoint19)
	(visible waypoint19 waypoint20)
	(visible waypoint20 waypoint21)
	(visible waypoint21 waypoint20)
	(visible waypoint20 waypoint23)
	(visible waypoint23 waypoint20)
	(visible waypoint21 waypoint4)
	(visible waypoint4 waypoint21)
	(visible waypoint21 waypoint9)
	(visible waypoint9 waypoint21)
	(visible waypoint22 waypoint3)
	(visible waypoint3 waypoint22)
	(visible waypoint22 waypoint12)
	(visible waypoint12 waypoint22)
	(visible waypoint22 waypoint15)
	(visible waypoint15 waypoint22)
	(visible waypoint22 waypoint24)
	(visible waypoint24 waypoint22)
	(visible waypoint23 waypoint8)
	(visible waypoint8 waypoint23)
	(visible waypoint23 waypoint9)
	(visible waypoint9 waypoint23)
	(visible waypoint23 waypoint19)
	(visible waypoint19 waypoint23)
	(visible waypoint24 waypoint13)
	(visible waypoint13 waypoint24)
	(visible waypoint24 waypoint20)
	(visible waypoint20 waypoint24)
	(visible waypoint24 waypoint21)
	(visible waypoint21 waypoint24)
	(visible waypoint24 waypoint25)
	(visible waypoint25 waypoint24)
	(visible waypoint25 waypoint3)
	(visible waypoint3 waypoint25)
	(visible waypoint25 waypoint4)
	(visible waypoint4 waypoint25)
	(visible waypoint25 waypoint6)
	(visible waypoint6 waypoint25)
	(visible waypoint25 waypoint9)
	(visible waypoint9 waypoint25)
	(visible waypoint25 waypoint12)
	(visible waypoint12 waypoint25)
	(visible waypoint25 waypoint13)
	(visible waypoint13 waypoint25)
	(visible waypoint25 waypoint14)
	(visible waypoint14 waypoint25)
	(visible waypoint25 waypoint15)
	(visible waypoint15 waypoint25)
	(visible waypoint25 waypoint18)
	(visible waypoint18 waypoint25)
	(visible waypoint25 waypoint20)
	(visible waypoint20 waypoint25)
	(visible waypoint25 waypoint22)
	(visible waypoint22 waypoint25)
	(at_rock_sample waypoint0)
	(at_soil_sample waypoint1)
	(at_rock_sample waypoint4)
	(at_rock_sample waypoint6)
	(at_soil_sample waypoint8)
	(at_rock_sample waypoint8)
	(at_rock_sample waypoint9)
	(at_rock_sample waypoint11)
	(at_rock_sample waypoint12)
	(at_soil_sample waypoint15)
	(at_rock_sample waypoint16)
	(at_soil_sample waypoint17)
	(at_soil_sample waypoint18)
	(at_rock_sample waypoint18)
	(at_soil_sample waypoint19)
	(at_soil_sample waypoint20)
	(at_rock_sample waypoint21)
	(at_lander general waypoint13)
	(channel_free general)
	(at rover0 waypoint22)
	(available rover0)
	(store_of rover0store rover0)
	(empty rover0store)
	(equipped_for_soil_analysis rover0)
	(equipped_for_imaging rover0)
	(can_traverse rover0 waypoint22 waypoint3)
	(can_traverse rover0 waypoint3 waypoint22)
	(can_traverse rover0 waypoint22 waypoint12)
	(can_traverse rover0 waypoint12 waypoint22)
	(can_traverse rover0 waypoint22 waypoint16)
	(can_traverse rover0 waypoint16 waypoint22)
	(can_traverse rover0 waypoint22 waypoint19)
	(can_traverse rover0 waypoint19 waypoint22)
	(can_traverse rover0 waypoint22 waypoint24)
	(can_traverse rover0 waypoint24 waypoint22)
	(can_traverse rover0 waypoint3 waypoint2)
	(can_traverse rover0 waypoint2 waypoint3)
	(can_traverse rover0 waypoint3 waypoint4)
	(can_traverse rover0 waypoint4 waypoint3)
	(can_traverse rover0 waypoint3 waypoint9)
	(can_traverse rover0 waypoint9 waypoint3)
	(can_traverse rover0 waypoint3 waypoint17)
	(can_traverse rover0 waypoint17 waypoint3)
	(can_traverse rover0 waypoint3 waypoint25)
	(can_traverse rover0 waypoint25 waypoint3)
	(can_traverse rover0 waypoint12 waypoint10)
	(can_traverse rover0 waypoint10 waypoint12)
	(can_traverse rover0 waypoint12 waypoint21)
	(can_traverse rover0 waypoint21 waypoint12)
	(can_traverse rover0 waypoint16 waypoint6)
	(can_traverse rover0 waypoint6 waypoint16)
	(can_traverse rover0 waypoint16 waypoint8)
	(can_traverse rover0 waypoint8 waypoint16)
	(can_traverse rover0 waypoint19 waypoint1)
	(can_traverse rover0 waypoint1 waypoint19)
	(can_traverse rover0 waypoint19 waypoint5)
	(can_traverse rover0 waypoint5 waypoint19)
	(can_traverse rover0 waypoint19 waypoint18)
	(can_traverse rover0 waypoint18 waypoint19)
	(can_traverse rover0 waypoint19 waypoint20)
	(can_traverse rover0 waypoint20 waypoint19)
	(can_traverse rover0 waypoint24 waypoint11)
	(can_traverse rover0 waypoint11 waypoint24)
	(can_traverse rover0 waypoint4 waypoint23)
	(can_traverse rover0 waypoint23 waypoint4)
	(can_traverse rover0 waypoint17 waypoint7)
	(can_traverse rover0 waypoint7 waypoint17)
	(at rover1 waypoint3)
	(available rover1)
	(store_of rover1store rover1)
	(empty rover1store)
	(equipped_for_soil_analysis rover1)
	(equipped_for_rock_analysis rover1)
	(equipped_for_imaging rover1)
	(can_traverse rover1 waypoint3 waypoint2)
	(can_traverse rover1 waypoint2 waypoint3)
	(can_traverse rover1 waypoint3 waypoint9)
	(can_traverse rover1 waypoint9 waypoint3)
	(can_traverse rover1 waypoint3 waypoint14)
	(can_traverse rover1 waypoint14 waypoint3)
	(can_traverse rover1 waypoint3 waypoint17)
	(can_traverse rover1 waypoint17 waypoint3)
	(can_traverse rover1 waypoint3 waypoint22)
	(can_traverse rover1 waypoint22 waypoint3)
	(can_traverse rover1 waypoint3 waypoint25)
	(can_traverse rover1 waypoint25 waypoint3)
	(can_traverse rover1 waypoint2 waypoint8)
	(can_traverse rover1 waypoint8 waypoint2)
	(can_traverse rover1 waypoint2 waypoint10)
	(can_traverse rover1 waypoint10 waypoint2)
	(can_traverse rover1 waypoint2 waypoint12)
	(can_traverse rover1 waypoint12 waypoint2)
	(can_traverse rover1 waypoint2 waypoint16)
	(can_traverse rover1 waypoint16 waypoint2)
	(can_traverse rover1 waypoint2 waypoint18)
	(can_traverse rover1 waypoint18 waypoint2)
	(can_traverse rover1 waypoint9 waypoint11)
	(can_traverse rover1 waypoint11 waypoint9)
	(can_traverse rover1 waypoint9 waypoint23)
	(can_traverse rover1 waypoint23 waypoint9)
	(can_traverse rover1 waypoint14 waypoint0)
	(can_traverse rover1 waypoint0 waypoint14)
	(can_traverse rover1 waypoint17 waypoint7)
	(can_traverse rover1 waypoint7 waypoint17)
	(can_traverse rover1 waypoint22 waypoint15)
	(can_traverse rover1 waypoint15 waypoint22)
	(can_traverse rover1 waypoint22 waypoint19)
	(can_traverse rover1 waypoint19 waypoint22)
	(can_traverse rover1 waypoint22 waypoint24)
	(can_traverse rover1 waypoint24 waypoint22)
	(can_traverse rover1 waypoint25 waypoint4)
	(can_traverse rover1 waypoint4 waypoint25)
	(can_traverse rover1 waypoint25 waypoint6)
	(can_traverse rover1 waypoint6 waypoint25)
	(can_traverse rover1 waypoint25 waypoint13)
	(can_traverse rover1 waypoint13 waypoint25)
	(can_traverse rover1 waypoint25 waypoint20)
	(can_traverse rover1 waypoint20 waypoint25)
	(can_traverse rover1 waypoint8 waypoint5)
	(can_traverse rover1 waypoint5 waypoint8)
	(can_traverse rover1 waypoint8 waypoint21)
	(can_traverse rover1 waypoint21 waypoint8)
	(on_board camera0 rover0)
	(calibration_target camera0 objective0)
	(supports camera0 high_res)
	(on_board camera1 rover0)
	(calibration_target camera1 objective0)
	(supports camera1 high_res)
	(on_board camera2 rover0)
	(calibration_target camera2 objective0)
	(supports camera2 colour)
	(supports camera2 high_res)
	(supports camera2 low_res)
	(on_board camera3 rover1)
	(calibration_target camera3 objective0)
	(supports camera3 high_res)
	(on_board camera4 rover1)
	(calibration_target camera4 objective0)
	(supports camera4 high_res)
	(on_board camera5 rover0)
	(calibration_target camera5 objective0)
	(supports camera5 high_res)
	(supports camera5 low_res)
	(visible_from objective0 waypoint0)
	(visible_from objective0 waypoint1)
	(visible_from objective0 waypoint2)
	(visible_from objective0 waypoint3)
	(visible_from objective0 waypoint4)
	(visible_from objective0 waypoint5)
	(visible_from objective0 waypoint9)
	(visible_from objective0 waypoint15)
	(visible_from objective0 waypoint16)
	(visible_from objective0 waypoint17)
	(visible_from objective0 waypoint18)
	(visible_from objective0 waypoint21)
	(visible_from objective0 waypoint22)
	(visible_from objective0 waypoint23)
)

(:goal (and
(communicated_soil_data waypoint17)
(communicated_soil_data waypoint8)
(communicated_soil_data waypoint20)
(communicated_soil_data waypoint19)
(communicated_soil_data waypoint18)
(communicated_soil_data waypoint1)
(communicated_soil_data waypoint15)
(communicated_rock_data waypoint12)
(communicated_rock_data waypoint6)
(communicated_rock_data waypoint18)
(communicated_rock_data waypoint4)
(communicated_rock_data waypoint11)
(communicated_rock_data waypoint21)
(communicated_rock_data waypoint0)
(communicated_rock_data waypoint8)
(communicated_rock_data waypoint9)
(communicated_rock_data waypoint16)
(communicated_image_data objective0 high_res)
(communicated_image_data objective0 low_res)
	)
)
)
