thread
gameLoop
	| input |
	input := SnakeInput new.
	
	input boardSizeMin: self boardSizeMin.
	input boardSizeMax: self boardSizeMax.
	
	apples do: [ :anApple | input addApple: anApple ].
	snakes do: [ :aSnake | input addSnake: aSnake ].
	
	snakes do: [ :aSnake | 
		self applyMovement: (aSnake computeStep: input) to: aSnake.
		self checkDeadSnake: aSnake.
		self checkEat: aSnake.
		].
	
	stop := (snakes at: 1) alive not