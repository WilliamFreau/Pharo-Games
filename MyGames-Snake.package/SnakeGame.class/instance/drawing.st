thread
drawing
	self buffer clear.
	
	"Draw all snakes and apple"
	snakes do: [ :aSnake | self buffer drawSnake: aSnake ].
	apples do: [ :anApple | self buffer drawApple: anApple ].