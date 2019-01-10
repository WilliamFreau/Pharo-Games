specs
defaultSpec

	^ SpecColumnLayout composed
		newRow: [ :row | row add: #ipInfo; add: #stateButton ] origin: 0@0 corner: 1@0.1;
		newRow: [ :row | row add: #listOfPlayer ] origin: 0@0.1 corner: 1@0.9;
		newRow: [ :row | row add: #infoServer ] origin: 0@0.9 corner: 1@1;
		yourself