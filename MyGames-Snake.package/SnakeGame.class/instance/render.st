thread
render
	|img|
	self drawing.
	img := self buffer area form.
	self gameShow image: img.