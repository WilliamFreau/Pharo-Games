Drawing
drawOn: aSnakeCanvas 
	aSnakeCanvas canvas fillRectangle: ( Rectangle origin: ((self position*self size) + (self size/(-2))) corner: ((self position*self size) + self size/(2)) ) color: Color lightGray.