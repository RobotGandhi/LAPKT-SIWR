(define (problem nurikabe-generated)
	(:domain nurikabe)
(:objects
	c_0_0 c_0_1 c_1_0 c_1_1 - cell
	g_0 g_1 - group
	n1 n2 n3 n4 - num
)

(:init
	(at c_0_1)
	(moving)
	(connected c_0_0 c_1_0)
	(connected c_0_0 c_0_1)
	(connected c_0_1 c_1_1)
	(connected c_0_1 c_0_0)
	(connected c_1_0 c_0_0)
	(connected c_1_0 c_1_1)
	(connected c_1_1 c_0_1)
	(connected c_1_1 c_1_0)
	(number-predecessor n0 n1)
	(number-predecessor n1 n2)
	(number-predecessor n2 n3)
	(number-predecessor n3 n4)
	(group-source c_1_0 g_0)
	(group-source c_1_0 g_1)
	(remaining-cells g_0 n1)
	(remaining-cells g_1 n1)
)

(:goal
	(and
		(group-painted g_0)
		(group-painted g_1)
	)
)
)
