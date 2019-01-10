thread
stopServer
	serverRunning := false.
	(serverThread) ifNotNil: [ 
		serverThread terminate.
		listenSocket closeAndDestroy.
	]