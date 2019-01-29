initialization
initializeWidgets
	startButton := self newButton.
	labelInfo := self newLabel.
	gameShow := self newImage.
	
	startButton label: 'NewGame'.
	labelInfo label: 'info'.
	
	startButton action: [ self onStartPressed ].
	
	