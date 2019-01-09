action
whenStartButtonPressed
	stop := false.
	
	gameThread
		ifNil: [ gameThread := self createThread ]
		ifNotNil: [ gameThread resume ]