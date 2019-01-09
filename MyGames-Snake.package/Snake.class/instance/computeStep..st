Core
computeStep: input
	| output |
	output := SnakeOutput new.
	
	self computeStep: input output: output.
	
	^output