;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Mundo do entregador
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain CARRIER)
  (:requirements :strips)
  (:predicates (on ?x)
	       (neighbour ?x ?y)
		   (blocked ?y))

  (:action move
	     :parameters (?x ?y)
	     :precondition (and (on ?x) (or (neighbour ?x ?y) (neighbour ?y ?x)) (not (blocked ?y)))
	     :effect
	     (and (on ?y))))