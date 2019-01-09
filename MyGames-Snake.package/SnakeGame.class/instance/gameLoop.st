thread
gameLoop
	| input |
	input := SnakeInput new.
	
	apples do: [ :anApple | input addApple: anApple ].
	snakes do: [ :aSnake | input addSnake: aSnake ].
	
	snakes do: [ :aSnake | 
		self applyMovement: (aSnake computeStep: input) to: aSnake
		]