initialization
createColorPanel
	|temp i|
	colors := ColorArray new.
	i := 1.
	[colors size < nbcolor] whileTrue: [ 
		temp := Color registeredColorNames atRandom.
		temp := (Color registeredNameOf: temp).
		(colors contains: temp) ifFalse: [ 
			colors at: i put: temp.
			]
		]