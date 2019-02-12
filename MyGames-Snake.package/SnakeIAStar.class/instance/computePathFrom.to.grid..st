Core
computePathFrom: aDep to: anArr grid: aGrid
	| openList closedList parents currentNode isArrived temp |
	openList := SortedCollection new
		sortBlock:
			[ :n1 :n2 | (n1 heuristic * n1 heuristic <= n2 heuristic) * n2 heuristic ].
	closedList := OrderedCollection new.
	parents := Dictionary new.
	isArrived := false.
	openList
		add:
			(Node new
				pos: aDep;
				heuristic: (aDep dist: anArr);
				cost: 0).
	
	[ (isArrived not) | openList isNotEmpty ]
		whileTrue: [ currentNode := openList first.	"Take node with min f squared"
				self halt.
			openList remove: currentNode.	"Remove current node from openList"
			closedList add: currentNode.	"Add current node to closed list"
				((currentNode pos) = (anArr pos) ) ifTrue: [ 
						"on est arrivé"
						isArrived := true.
						^self rebuildPath: currentNode parents: parents.
					 ].
			temp := self
				getNeightOf: currentNode
				onGrid: aGrid
				closedList: closedList.
			temp do: [ :tmp | parents at: currentNode put: tmp ]. ].