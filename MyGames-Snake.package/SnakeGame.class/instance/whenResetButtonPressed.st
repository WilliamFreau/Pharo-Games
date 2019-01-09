action
whenResetButtonPressed
	stop := true.
	gameThread := nil.
	
	self resetGame.
	self initGame.
	
	self render.