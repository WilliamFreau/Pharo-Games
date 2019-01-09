Factory
new: aPosition
	|sn|
	sn := self new.
	1 to: 5 do: [ :i | sn body add: (1@i) ].
	^sn