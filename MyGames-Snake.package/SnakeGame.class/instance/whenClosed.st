action
whenClosed
	(gameThread) ifNotNil: [ gameThread terminate. gameThread := nil ]