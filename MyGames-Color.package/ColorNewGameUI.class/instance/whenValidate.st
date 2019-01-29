action
whenValidate
	| aColorCore nbCell nbCellX nbCellY nbColor|
	
	aColorCore := ColorGameCore new.
	nbCell := inputNbCell value.
	
	(nbCell matchesRegex: '^[1-9][0-9]{0,};[1-9][0-9]{0,}$') ifFalse: [ 
		inputNbCell color: Color red.
		^false
		 ].
	
	
	
	colorGame initGame:  aColorCore