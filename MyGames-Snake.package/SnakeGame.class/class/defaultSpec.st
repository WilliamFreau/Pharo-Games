specs
defaultSpec

	^ SpecColumnLayout composed
		newRow: [ :row | row add: #startButton; add: #pauseButton; add: #resetButton ; add: #connectToServer; add: #newServer] origin: 0.01@0 corner: 0.99@0.05;
		newRow: [ :row | row add: #gameShow ] origin: 0.01@0.1 corner: 0.99@0.99;
		yourself.