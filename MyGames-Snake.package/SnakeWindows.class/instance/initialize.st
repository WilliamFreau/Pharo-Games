Initialization
initialize
	super initialize.
	self installDrawingArea.
	self window position: self defaultPosition+2000.
	self window openInWorld.
	self window extent: (self defaultSize + self margin).