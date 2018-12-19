Initialization
initialize
	super initialize.
	body := OrderedCollection new.
	dir := 0@0.
	color := Snake getRandomColor.
	alive := false.
	score := 0.