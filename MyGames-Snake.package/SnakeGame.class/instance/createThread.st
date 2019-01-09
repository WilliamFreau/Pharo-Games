thread
createThread
	self resetGame.
	self initGame.
	^ [ [ self stop ] whileFalse: [ 
			self gameLoop.
			self render.
			(Delay forMilliseconds: self timeBetweenFrame) wait.
			 ] ] fork.