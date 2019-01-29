initialization
createColorPanel
	colors := OrderedCollection new.
	[colors size < nbcolor] whileTrue: [ 
		colors add: (Color random).
		]