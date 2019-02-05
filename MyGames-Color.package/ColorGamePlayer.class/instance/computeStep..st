game
computeStep: input
	|output|
	output := ColorGameOutput new.
	self computeStep: input output: output.
	^output.