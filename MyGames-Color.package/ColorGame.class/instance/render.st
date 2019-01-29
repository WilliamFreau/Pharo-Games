drawing
render
	game ifNotNil: [
		self drawing.
	].
	self gameShow image: (self buffer area form).