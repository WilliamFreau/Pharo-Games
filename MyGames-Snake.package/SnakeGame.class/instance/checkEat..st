gaming
checkEat: aSnake
	| appleToRm |
	appleToRm := Set new.
	"Check for apple eat"
	(apples select: [ :apple | (((apple position x)==(aSnake head x)) and: ((apple position y)==(aSnake head y))) ]) do: [ :apple | appleToRm add: apple. aSnake eat. ].
	appleToRm do: [ :apple | apples remove: apple. apples add: (Apple new: (self randomEmptyPosition)) ].