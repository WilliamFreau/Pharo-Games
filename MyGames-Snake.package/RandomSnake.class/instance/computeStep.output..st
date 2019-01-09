Core
computeStep: input output: output
	| index |
	index := (1 to: 4) atRandom.
	
	(index == 1) ifTrue: [ output setDirToDown ].
	(index == 2) ifTrue: [ output setDirToUp ].
	(index == 3) ifTrue: [ output setDirToLeft ].
	(index == 4) ifTrue: [ output setDirToRight ].