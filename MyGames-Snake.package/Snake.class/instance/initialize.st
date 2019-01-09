Initialization
initialize
	super initialize.
	body := OrderedCollection new.
	color := Snake getRandomColor.
	alive := true.
	score := 0.