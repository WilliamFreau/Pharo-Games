initialization
initialize 
	super initialize.
	
	buffer := SnakeCanvas new.
	snakes := OrderedCollection new.
	apples := OrderedCollection new.