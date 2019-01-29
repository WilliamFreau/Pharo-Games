action
whenValidate
	| aColorCore nbCell nbCellX nbCellY nbColor|
	
	aColorCore := ColorGameCore new.
	nbCell := inputNbCell textHolder value.
	
	(nbCell matchesRegex: '^[1-9][0-9]{0,};[1-9][0-9]{0,}$') ifFalse: [ 
		inputNbCell color: Color red.
		^false
		 ].
	
	nbCellX := (';' split: nbCell) at: 1 asInteger.
	nbCellY := (';' split: nbCell) at: 2 asInteger.
	
	nbColor := inputNbColor textHolder value.
	
	aColorCore maxSize: nbCellX@nbCellY.
	aColorCore nbColor: nbColor.
	aColorCore generate.
	
	colorGame initGame:  aColorCore.
	
	self window close.