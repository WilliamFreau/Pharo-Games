Core
willDieOn: aPos
	| nb |
	nb := 0.
	self body do: [ :el | (((el x)==(aPos x)) and: ((el y)==(aPos y))) ifTrue: [ nb := nb + 1 ] ].
	^(nb>0)