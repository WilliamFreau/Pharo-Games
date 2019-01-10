initialization
initializeWidgets
	startButton := self newButton.
	pauseButton := self newButton.
	resetButton := self newButton.
	newServer := self newButton.
	connectToServer := self newButton.
	
	gameShow := self newImage.
	
	startButton label: 'Start game'.
	pauseButton label: 'Pause game'.
	resetButton label: 'Reset game'.
	newServer label: 'Host Server'.
	connectToServer label: 'Connect to server'.
	
	startButton action: [ self whenStartButtonPressed ].
	pauseButton action: [ self whenPauseButtonPressed ].
	resetButton action: [ self whenResetButtonPressed ].
	newServer action: [ self whenNewServerButtonPressed ].
	connectToServer action: [ self whenConnectToServerPressed ].