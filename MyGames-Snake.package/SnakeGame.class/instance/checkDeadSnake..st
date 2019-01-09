gaming
checkDeadSnake: aSnake 
	|nb|
	nb := 0.
	"check for death"
	"Collision with aSnake body"
	aSnake body do: [ :el | ((el x)==(aSnake head x) and: ((el y)==(aSnake head y))) ifTrue: [ nb := nb +1 ] ].
	(nb > 1) ifTrue: [ aSnake alive: false].
	
	"Collision with other snake"
	"(snakes reject: [ :advs | (advs == aSnake) ]) do: [ :adv | 
		adv body do: [ :bodyPart | aSnake head == bodyPart ifTrue: [ aSnake alive: false. ] ]
	 ]."