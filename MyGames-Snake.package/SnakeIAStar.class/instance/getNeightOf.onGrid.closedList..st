Core
getNeightOf: aPos onGrid: aGrid closedList: aClosedList
	| neight ret|
	
	neight := aPos getNeightInGrid: aGrid.
	ret := OrderedCollection new.
	
	neight do: [ :neigh | 
		(aClosedList includes: neigh) ifFalse: [ ret add: neigh. ].
	 ].
	
	^ret