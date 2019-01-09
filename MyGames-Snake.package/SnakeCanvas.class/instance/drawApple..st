Drawing
drawApple: anApple
	self area fillRectangle: (Rectangle origin: (anApple position * self cellSize) extent: (self cellSize)) color: Color red.