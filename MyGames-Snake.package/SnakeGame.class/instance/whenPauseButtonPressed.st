action
whenPauseButtonPressed
	gameThread ifNotNil: [ gameThread suspend ]