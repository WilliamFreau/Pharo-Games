drawing
drawAt: row at: column color: aColor
	area fillRectangle: (Rectangle origin: ((column@row) * self cellSize) extent: (self cellSize)) color: aColor.