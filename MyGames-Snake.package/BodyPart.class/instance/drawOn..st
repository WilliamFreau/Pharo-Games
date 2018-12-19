Drawing
drawOn: aSnakeCanvas 
	Transcript crShow: 'origin: ';show:((self position*self size) + (self size/(-2))).
	Transcript crShow: 'corner: ';show:((self position*self size) + self size/(2)).
	aSnakeCanvas canvas fillRectangle: ( Rectangle origin: ((self position*self size) + (self size/(-2))) extent: self size ) color: Color lightGray.
	aSnakeCanvas changed.