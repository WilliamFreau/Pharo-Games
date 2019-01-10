initialization
openWithSpec
	super openWithSpec.
	
	self window whenClosedDo: [ self onClosed ].