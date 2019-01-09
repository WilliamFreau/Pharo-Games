Drawing
drawSnake: aSnake
	aSnake body do: [ :bodyPart | 
		self area fillRectangle: (Rectangle origin: (bodyPart * self cellSize+1) extent: (self cellSize-2) ) color: aSnake color.
		 ].