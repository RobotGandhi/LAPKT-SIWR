
(define (domain nurikabe)
(:requirements :typing :adl)
(:types
    cell num group - object
)
(:constants
    n0 - num
)
(:predicates
    (next ?n1 - num ?n2 - num)
    (connected ?c - cell ?c2 - cell)
    (source ?x - cell ?g - group)
    (painted ?r - cell ?g - group)
    (available ?x - cell)
    (part-of ?x - cell ?y - group)
    (remaining-cells ?x - group ?y - num)
    (robot-pos ?x - cell)
    (moving)
    (painting ?g - group)
    (group-painted ?g - group)
)
(:action move
    :parameters (?from - cell ?to - cell)
    :precondition
    (and
        (connected ?from ?to)
        (moving)
        (robot-pos ?from)
    )
    :effect
    (and
        (robot-pos ?to)
        (not (robot-pos ?from))
    )
)

(:action start-painting
    :parameters (?c - cell ?g - group ?n1 - num ?n2 - num)
    :precondition
    (and
        (next ?n2 ?n1)
        (source ?c ?g)
        (moving)
        (robot-pos ?c)
        (remaining-cells ?g ?n1)
    )
    :effect
    (and
        (not (moving))
        (painting ?g)
        (painted ?c ?g)
        (remaining-cells ?g ?n2)
        (not (remaining-cells ?g ?n1))
        (forall (?cadj - cell)
            (when 
            	(and
            	    (connected ?to ?cadj)
            	    (not (part-of ?cadj ?g))
            	)
            	(part-of ?cadj ?g)
            )
        )
    )
)


(:action move-painting
    :parameters (?from - cell ?to - cell ?g - group ?n1 - num ?n2 - num)
    :precondition
    (and
        (next ?n2 ?n1)
        (connected ?from ?to)
        (painting ?g)
        (remaining-cells ?g ?n1)
        (robot-pos ?from)
    )
    :effect
    (and
        (robot-pos ?to)
        (not (robot-pos ?from))
        (when
            (not (painted ?to ?g))
            (and
        	(painted ?to ?g)
		(remaining-cells ?g ?n2)
		(not (remaining-cells ?g ?n1))
	    )
        )
        (forall (?cadj - cell)
            (when 
            	(and
            	    (connected ?to ?cadj)
            	    (not (part-of ?cadj ?g))
            	)
            	(part-of ?cadj ?g)
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
