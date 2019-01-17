accessing
directionAsInt
	(direction == self up) ifTrue: [ ^1 ].
	(direction == self down) ifTrue: [ ^2 ].
	(direction == self left) ifTrue: [ ^3 ].
	(direction == self right) ifTrue: [ ^4 ].
	^0