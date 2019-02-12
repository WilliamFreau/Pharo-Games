Core
computeGrid: input
	| grid |
	grid := Array2D rows: (input boardSizeMax y - (input boardSizeMin y)) columns: (input boardSizeMax x - (input boardSizeMin x)).
	grid atAllPut: true.
	
	input snakes do: [ :snake | 
			snake body do: [ :aBodyPart | grid at: (aBodyPart y) at: (aBodyPart x) put: false ].
		].
	
	^grid