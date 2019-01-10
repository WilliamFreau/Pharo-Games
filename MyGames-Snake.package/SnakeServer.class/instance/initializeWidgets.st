initialization
initializeWidgets
	ipInfo := self newLabel.
	infoServer := self newLabel.
	stateButton := self newButton.
	listOfPlayer := self newList.
	
	ipInfo label: 'ipInfo'.
	infoServer label: 'info about server'.
	stateButton label: 'Start server'.
	
	stateButton action: [ self whenStateButtonPressed ].