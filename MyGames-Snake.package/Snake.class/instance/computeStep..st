Core
computeStep: input
	self computeInput: input.
	self computeMove: input.
	self computeEating: input.
	self computeDead: input.