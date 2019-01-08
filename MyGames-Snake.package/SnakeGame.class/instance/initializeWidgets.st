initialization
initializeWidgets
	startButton := self newButton.
	pauseButton := self newButton.
	resetButton := self newButton.
	
	gameShow := self newImage.
	
	startButton label: 'Start game'.
	pauseButton label: 'Pause game'.
	resetButton label: 'Reset game'.
	
	startButton action: [ self whenStartButtonPressed ].
	pauseButton action: [ self whenPauseButtonPressed ].
	resetButton action: [ self whenResetButtonPressed ].