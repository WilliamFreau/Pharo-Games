Initialization
initialize
	super initialize.
	body := OrderedCollection new.
	color := Snake getRandomColor.
	alive := false.
	score := 0.