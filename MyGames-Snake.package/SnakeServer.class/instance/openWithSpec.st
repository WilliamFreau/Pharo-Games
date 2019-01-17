initialization
openWithSpec
	super openWithSpec.
	
	self ipInfo label: (self myIp asString),':',(self myPort asString).
	
	self window whenClosedDo: [ self onClosed ].