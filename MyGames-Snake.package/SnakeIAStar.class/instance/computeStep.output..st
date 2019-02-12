Core
computeStep: input output: output
	| grid paths |
	grid := self computeGrid: input.
	paths := OrderedCollection new.
	input apples do: [ :apple | 
		paths add: (self computePathFrom: self head to: apple grid: grid)
		 ]