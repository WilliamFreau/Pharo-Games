action
whenStateButtonPressed
	(serverRunning) ifTrue: [ 
		stateButton label: 'Start server'.
		self stopServer.
		 ] ifFalse: [ 
			stateButton label: 'Stop server'.
			self startServer.
		 ]