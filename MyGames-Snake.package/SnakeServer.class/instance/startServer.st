thread
startServer
	myPort := 60000.
	
	listenSocket := Socket newTCP.
	listenSocket listenOn: myPort backlogSize: 10.
	Transcript crShow: 'Server run'.
	serverRunning := true.
	serverThread := [ 
		[ self serverRunning ] whileTrue: [ 
			self serverLoop.
			(Delay forMilliseconds: self timeToWait) wait.
		]
	] fork.