initialization
generate
	self createColorPanel.
	gameBoard := Array2D rows: maxSize y columns: maxSize x.
	
	1 to: maxSize x do: [ :i | 
		1 to: maxSize y do: [ :j |
				gameBoard at:j at:i put: (colors atRandom).
			 ].
		 ].