Initialization
installDrawingArea
	self drawingArea position: self margin/2.
	self drawingArea extent: (self defaultSize - self margin).
	self window addMorph: self drawingArea.