initialization
openWithSpec
	| bounds |
	super openWithSpec.
	
	bounds := self gameShow widget widget bounds.
	self buffer extent: (bounds corner - bounds origin).
	
	self render.