Initialization
initialize
	super initialize.
	body := OrderedCollection new.
	color := Snake getRandomColor.
	alive := false.
	score := 0.
	
	1 to: 5 do: [ :i | body add: (10@(10+i)) ]