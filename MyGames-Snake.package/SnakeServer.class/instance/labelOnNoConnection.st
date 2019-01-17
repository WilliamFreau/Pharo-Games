thread
labelOnNoConnection
	^self serverRunning ifTrue: [ 'No new connection' ] ifFalse: [ 'Server not running' ].