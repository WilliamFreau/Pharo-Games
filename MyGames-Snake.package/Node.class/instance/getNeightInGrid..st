neightborhood
getNeightInGrid: aGrid
	| dirs list tmp |
	dirs := {(-1@0). (1@0). (0@(-1)). (0@1).}.
	list := OrderedCollection new.
	dirs collect: [ :dir | tmp := pos + dir. (((tmp x) <= 0) | ((tmp y) <= 0) | ((tmp x) >= (aGrid numberOfColumns)) | ((tmp y) > (aGrid numberOfRows))) ifFalse: [ 
				self halt.
				(aGrid at: (tmp y) at: (tmp x)) ifTrue: [ list add: (Node new: self pos: tmp). ].
			 ].
		].
	^list.