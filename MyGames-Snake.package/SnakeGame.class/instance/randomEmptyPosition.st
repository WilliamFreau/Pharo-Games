gaming
randomEmptyPosition
	|tmp ok pos nb|
	tmp := Set new.
	snakes do: [ :aSnake | aSnake body do: [ :bodyPart | tmp add: bodyPart ] ].
	apples do: [ :apple | tmp add: apple position ].
	ok := false.
	nb := 0.
	[ ok ] whileFalse: [ 
		pos := ((((self boardSizeMin x) to: (self boardSizeMax x)) atRandom)@(((self boardSizeMin y) to: (self boardSizeMax y)) atRandom)).
		tmp do: [ :ttmp | (((ttmp x)==(pos x)) and: [((ttmp y)==(pos y)) and: (ok not)]) ifTrue: [ nb := nb + 1 ] ].
		ok := nb==0.
	 ].
	^pos