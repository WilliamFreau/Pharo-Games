instance creation
new: aParentNode pos: aPos
	^(Node new) pos: aPos; cost: ([aParentNode ifNotNil: [ aParentNode cost ] ifNil: [0]] value + 1);yourself