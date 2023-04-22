(define (problem transport-generated)
	(:domain transport)
(:objects
	p_0_0 p_0_1 p_0_2 p_1_0 p_1_1 p_1_2 p_2_0 p_2_1 p_2_2 p_3_0 p_3_1 p_3_2 p_4_0 p_4_1 p_4_2 p_5_0 p_5_1 p_5_2 p_6_0 p_6_1 p_6_2 - place
	b0 b1 b2 b3 - box
	t0 - truck
	f0 - fuel
	f1 - fuel
	f2 - fuel
	f3 - fuel
	f4 - fuel
	f5 - fuel
	f6 - fuel
	f7 - fuel
	f8 - fuel
	f9 - fuel
	f10 - fuel
	f11 - fuel
	f12 - fuel
	f13 - fuel
	f14 - fuel
	f15 - fuel
	f16 - fuel
	f17 - fuel
	f18 - fuel
	f19 - fuel
	f20 - fuel
	f21 - fuel
	f22 - fuel
)

(:init
	(connected p_0_0 p_1_0)
	(connected p_0_0 p_0_1)
	(connected p_0_1 p_1_1)
	(connected p_0_1 p_0_0)
	(connected p_0_1 p_0_2)
	(connected p_0_2 p_1_2)
	(connected p_0_2 p_0_1)
	(connected p_1_0 p_0_0)
	(connected p_1_0 p_2_0)
	(connected p_1_0 p_1_1)
	(connected p_1_1 p_0_1)
	(connected p_1_1 p_2_1)
	(connected p_1_1 p_1_0)
	(connected p_1_1 p_1_2)
	(connected p_1_2 p_0_2)
	(connected p_1_2 p_2_2)
	(connected p_1_2 p_1_1)
	(connected p_2_0 p_1_0)
	(connected p_2_0 p_3_0)
	(connected p_2_0 p_2_1)
	(connected p_2_1 p_1_1)
	(connected p_2_1 p_3_1)
	(connected p_2_1 p_2_0)
	(connected p_2_1 p_2_2)
	(connected p_2_2 p_1_2)
	(connected p_2_2 p_3_2)
	(connected p_2_2 p_2_1)
	(connected p_3_0 p_2_0)
	(connected p_3_0 p_4_0)
	(connected p_3_0 p_3_1)
	(connected p_3_1 p_2_1)
	(connected p_3_1 p_4_1)
	(connected p_3_1 p_3_0)
	(connected p_3_1 p_3_2)
	(connected p_3_2 p_2_2)
	(connected p_3_2 p_4_2)
	(connected p_3_2 p_3_1)
	(connected p_4_0 p_3_0)
	(connected p_4_0 p_5_0)
	(connected p_4_0 p_4_1)
	(connected p_4_1 p_3_1)
	(connected p_4_1 p_5_1)
	(connected p_4_1 p_4_0)
	(connected p_4_1 p_4_2)
	(connected p_4_2 p_3_2)
	(connected p_4_2 p_5_2)
	(connected p_4_2 p_4_1)
	(connected p_5_0 p_4_0)
	(connected p_5_0 p_6_0)
	(connected p_5_0 p_5_1)
	(connected p_5_1 p_4_1)
	(connected p_5_1 p_6_1)
	(connected p_5_1 p_5_0)
	(connected p_5_1 p_5_2)
	(connected p_5_2 p_4_2)
	(connected p_5_2 p_6_2)
	(connected p_5_2 p_5_1)
	(connected p_6_0 p_5_0)
	(connected p_6_0 p_6_1)
	(connected p_6_1 p_5_1)
	(connected p_6_1 p_6_0)
	(connected p_6_1 p_6_2)
	(connected p_6_2 p_5_2)
	(connected p_6_2 p_6_1)
	(at b0 p_2_0)
	(at b1 p_4_2)
	(at b2 p_0_2)
	(at b3 p_4_2)
	(at t0 p_3_1)
	(empty t0)
	(fuel-level t0 f33)
	(fuel-predecessor f0 f1)
	(fuel-predecessor f1 f2)
	(fuel-predecessor f2 f3)
	(fuel-predecessor f3 f4)
	(fuel-predecessor f4 f5)
	(fuel-predecessor f5 f6)
	(fuel-predecessor f6 f7)
	(fuel-predecessor f7 f8)
	(fuel-predecessor f8 f9)
	(fuel-predecessor f9 f10)
	(fuel-predecessor f10 f11)
	(fuel-predecessor f11 f12)
	(fuel-predecessor f12 f13)
	(fuel-predecessor f13 f14)
	(fuel-predecessor f14 f15)
	(fuel-predecessor f15 f16)
	(fuel-predecessor f16 f17)
	(fuel-predecessor f17 f18)
	(fuel-predecessor f18 f19)
	(fuel-predecessor f19 f20)
	(fuel-predecessor f20 f21)
	(fuel-predecessor f21 f22)
	(= (total-cost) 0)
)

(:goal
	(and
		(at b0 p_4_0)
		(at b1 p_1_0)
		(at b2 p_1_2)
		(at b3 p_2_1)
	)
)

(:metric minimize (total-cost))
)
