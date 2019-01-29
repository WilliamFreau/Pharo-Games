initialization
initializeWidgets
	lblNbCell := self newLabel.
	inputNbCell := self newTextInput.
	
	lblNbColor := self newLabel.
	inputNbColor := self newTextInput.
	
	validate := self newButton.
	
	lblNbCell label: 'Nb Case X;Y  : '.
	"inputNbCell value: '10;10'."
	
	lblNbColor label: 'Nb Color: '.
	"inputNbColor value: '10'."
	
	validate label: 'Creer la partie'.
	validate action: [ self whenValidate ].