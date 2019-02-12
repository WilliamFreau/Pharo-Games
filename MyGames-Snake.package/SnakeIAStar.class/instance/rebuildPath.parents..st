Core
rebuildPath: aNode parents: aParents
	| path cur |
	
	path := OrderedCollection new.
	cur := aNode.
	[ cur ] whileNotNil: [ 
		path add: cur.
		cur := aParents at: cur.
	 ].
	^path.