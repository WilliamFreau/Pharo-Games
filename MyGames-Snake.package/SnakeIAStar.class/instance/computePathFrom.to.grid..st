Core
computePathFrom: aDep to: anArr grid: aGrid
	| openList closedList parents currentNode isArrived |
	
	openList := SortedCollection new sortBlock: [ :n1 :n2 | n1 heuristic * n1 heuristic <= n2 heuristic * n2 heuristic ].
	closedList := OrderedCollection new.
	parents := Dictionary new.
	isArrived := false.
	
	openList add: ((Node new) pos: aDep; heuristic: (aDep dist: anArr); cost: 0).
	
	[ isArrived ] whileFalse: [ 
		currentNode := openList first.	"Take node with min f squared"
		
		openList remove: currentNode.	"Remove current node from openList"
		closedList add: currentNode.	"Add current node to closed list"
		
		
	 ].