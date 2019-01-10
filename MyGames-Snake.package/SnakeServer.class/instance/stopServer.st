thread
stopServer
	serverRunning := false.
	(serverThread) ifNotNil: [ 
		Transcript crShow: 'Server stop'.
		serverThread terminate.
		listenSocket closeAndDestroy.
	]