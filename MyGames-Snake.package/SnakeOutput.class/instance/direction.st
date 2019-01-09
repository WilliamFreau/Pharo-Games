accessing
direction
	(direction == self up) ifTrue: [ ^(0@(-1)) ].
	(direction == self down) ifTrue: [ ^(0@1) ].
	(direction == self left) ifTrue: [ ^(-1@0) ].
	(direction == self right) ifTrue: [ ^(1@0) ].
	^nil