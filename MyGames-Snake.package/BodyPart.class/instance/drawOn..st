Drawing
drawOn: aSnakeCanvas 
	aSnakeCanvas canvas fillRectangle: ( Rectangle origin: ((self position*self size) + (self size/(-2))) extent: self size ) color: Color lightGray.
	aSnakeCanvas canvas fillRectangle: ( Rectangle origin: ((self position*self size) + (self size/2)) extent: self size/2) color: Color black.
	aSnakeCanvas changed.