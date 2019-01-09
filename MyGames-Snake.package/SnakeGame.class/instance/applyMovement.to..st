gaming
applyMovement: aSnakeMovement to: aSnake
	(aSnakeMovement direction) ifNil: [ aSnake alive: false. ^nil ].
	(2 to: aSnake body size) reverse do: [ :i | aSnake body at: i put: (aSnake body at: (i-1)) ].
	aSnake body at: 1 put: ((aSnake body at: 1) + (aSnakeMovement direction)).
	
	"Loop in board"
	(aSnake head x < (self boardSizeMin x)) ifTrue: [ aSnake body at: 1 put: (self boardSizeMax x)@(aSnake head y) ].
	(aSnake head y < (self boardSizeMin y)) ifTrue: [ aSnake body at: 1 put: (aSnake head x)@(self boardSizeMax y) ].
	(aSnake head x > (self boardSizeMax x)) ifTrue: [ aSnake body at: 1 put: (self boardSizeMin x)@(aSnake head y) ].
	(aSnake head y > (self boardSizeMax y)) ifTrue: [ aSnake body at: 1 put: (aSnake head x)@(self boardSizeMin y) ].
	
	"check for death"
	"Collision with aSnake body"
	2 to: aSnake body size do: [ :i | aSnake head == (aSnake body at: i) ifTrue: [ aSnake alive: false. ^nil ] ].
	"Collision with other snake"
	snakes reject: [ :advs | (advs == aSnake) ] thenDo: [ :adv | 
		adv body do: [ :bodyPart | aSnake head == bodyPart ifTrue: [ aSnake alive: false. ^nil ] ]
		 ].
	
	"Check for apple eat"
	apples do: [ :apple | ((apple position) == (aSnake head)) ifTrue: [ apples remove: apple. aSnake eat. ] ].