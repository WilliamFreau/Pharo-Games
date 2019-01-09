thread
createThread
	^ [ [ self stop ] whileFalse: [ 
			self gameLoop.
			self render.
			(Delay forMilliseconds: self timeBetweenFrame) wait.
			 ] ] fork.