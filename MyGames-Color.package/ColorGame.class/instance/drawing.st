drawing
drawing
	buffer clear.
	game gameBoard indicesDo: [ :row :column | 
			buffer drawAt: row at: column color: (game gameBoard at: row at:column)
		 ]