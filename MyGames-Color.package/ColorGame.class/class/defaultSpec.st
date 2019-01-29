specs
defaultSpec

	^ SpecColumnLayout composed
		newRow: [ :row | row add: #startButton; add: #labelInfo ] origin: 0.01@0.01 corner: 0.1@0.07 ;
		newRow: [ :row | row add: #gameShow ] origin: 0.1@0.01 corner: 0.99@0.99 ;
		yourself.