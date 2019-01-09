action
whenStartButtonPressed
	|bounds|
	bounds := self gameShow widget widget bounds.
	self buffer extent: (bounds corner - bounds origin).
	
	