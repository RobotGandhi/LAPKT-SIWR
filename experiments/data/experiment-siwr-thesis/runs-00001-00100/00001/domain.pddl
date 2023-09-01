(define (domain nurikabe)
(:requirements :typing)
(:types
	cell - object
	num - object
	group - object
)
(:constants
    	n0 - num
)
(:predicates	
	(at ?x1 - cell)
	(connected ?x1 - cell ?x2 - cell)
	(painted ?x1 - cell ?g1 - group)
	(group-source ?c - cell ?g - group)
	(remaining-cells ?g - group ?n - num)
	(group-painted ?g - group)
	(moving)
    	(painting ?g - group)
    	(number-predecessor ?n1 - num ?n2 - num)
)

(:action move
    :parameters (?from - cell ?to - cell)
    :precondition
    (and
        (connected ?from ?to)
        (moving)
        (at ?from)
    )
    :effect
    (and
        (at ?to)
        (not (at ?from))
    )
)

(:action start-painting
    :parameters (?c - cell ?g - group ?n1 - num ?n2 - num)
    :precondition
    (and
        (number-predecessor ?n1 ?n2)
        (group-source ?c ?g)
        (moving)
        (at ?c)
        (remaining-cells ?g ?n2)
    )
    :effect
    (and
        (not (moving))
        (painting ?g)
        (painted ?c ?g)
        (remaining-cells ?g ?n1)
        (not (remaining-cells ?g ?n2))
    )
)

(:action move-painting
    :parameters (?from - cell ?to - cell ?g - group ?n1 - num ?n2 - num)
    :precondition
    (and
        (number-predecessor ?n1 ?n2)
        (connected ?from ?to)
        (painting ?g)
        (remaining-cells ?g ?n2)
        (at ?from)
    )
    :effect
    (and
        (at ?to)
        (not (at ?from))
        (when
            (not(painted ?to ?g))
            (and
        	(painted ?to ?g)
		(remaining-cells ?g ?n1)
		(not (remaining-cells ?g ?n2))
	    )
        )
    )
)

(:action end-painting
    :parameters (?g - group)
    :precondition
    (and
        (painting ?g)
        (remaining-cells ?g n0)
    )
    :effect
    (and
        (not (painting ?g))
        (moving)
        (group-painted ?g)
    )
)

)
