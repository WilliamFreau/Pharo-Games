Core
computeStep: input output: output
	| grid apples paths min selectedPath |
	grid := self computeGrid: input.
	paths := OrderedCollection new.
	apples := OrderedCollection new.
	input apples do: [ :apple | apples add: ((Node new) pos: apple position). ].
	apples do: [ :apple | 
		paths add: (self computePathFrom: self head to: apple grid: grid)
		 ].
	min := 16rFFFFFF.
	paths do: [ :path | (min > path size) ifTrue: [min = path size. selectedPath := path] ].
	^selectedPath.