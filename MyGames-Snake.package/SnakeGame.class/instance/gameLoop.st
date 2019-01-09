thread
gameLoop
	| input temp|
	input := SnakeInput new.
	
	input boardSizeMin: self boardSizeMin.
	input boardSizeMax: self boardSizeMax.
	
	apples do: [ :anApple | input addApple: anApple ].
	snakes do: [ :aSnake | input addSnake: aSnake ].
	
	snakes do: [ :aSnake | 
		self applyMovement: (aSnake computeStep: input) to: aSnake
		].
	
	temp := true.
	snakes do: [ :aSnake | temp := aSnake alive and: temp. temp ifFalse: [ stop := true ]]