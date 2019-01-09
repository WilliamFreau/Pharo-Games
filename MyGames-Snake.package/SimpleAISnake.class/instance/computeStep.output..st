Core
computeStep: input output: output
	|dest|
	
	dest := (input apples asOrderedCollection at: 1) position.
	
	((self head x) > (dest x) and: (self willNotDieOnLeft)) ifTrue: [ output setDirToLeft ].
	((self head x) < (dest x) and: (self willNotDieOnRight)) ifTrue: [ output setDirToRight ].
	((self head y) > (dest y) and: (self willNotDieOnUp)) ifTrue: [ output setDirToUp ].
	((self head y) < (dest y) and: (self willNotDieOnDown)) ifTrue: [ output setDirToDown ].