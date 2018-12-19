Core
computeMove: input
	body size to: 2 by: -1 do: [  :i | 
		body at: i put: (body at: i-1)
		 ].
	body at: 1 put: ((body at: 1) + input dir).