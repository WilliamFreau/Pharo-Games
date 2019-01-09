gaming
applyMovement: aSnakeMovement to: aSnake
	(aSnakeMovement direction) ifNil: [ aSnake alive: false. ^nil ].
	(2 to: aSnake body size) reverse do: [ :i | aSnake body at: i put: (aSnake body at: (i-1)) ].
	aSnake body at: 1 put: ((aSnake body at: 1) + (aSnakeMovement direction))
	
	