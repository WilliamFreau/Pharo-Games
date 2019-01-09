Core
computeStep: input output: output
	| willDie nb|
	willDie := true.
	[ willDie ] whileTrue: [ 
		super computeStep: input output: output.
		nb := 0.
		self body do: [ :pos | (((pos x) == ((self head + (output direction)) x)) and: ((pos y) == ((self head + output direction) y))) ifTrue: [ nb := nb+1 ] ].
		
		willDie := (nb==0)not.
	]