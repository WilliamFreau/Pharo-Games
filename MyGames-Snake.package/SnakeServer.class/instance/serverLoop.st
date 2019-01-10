thread
serverLoop
	|interactSocket|
	interactSocket := listenSocket waitForAcceptFor: 1.
	
	(interactSocket) ifNotNil: [ 
		"Nouvelle connexion"
		playerSockets add: { interactSocket. (ZdcSocketStream on: interactSocket). }.
		self infoServer label: 'Nouvelle connexion'.
	] ifNil: [ 
		self infoServer label: self labelOnNoConnection.
	 ]