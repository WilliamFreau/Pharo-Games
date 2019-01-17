initialization
initializeWidgets
	labelAddress := self newLabel.
	address := self newTextInput.
	
	labelPort := self newLabel.
	port := self newTextInput.
	
	connect := self newButton.
	
	labelAddress label: 'Server Address'.
	labelPort label: 'Port:'.
	connect label: 'Conncect to server'.
	